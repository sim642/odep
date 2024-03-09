open Common
open Dune_describe

module Digest_map = Map.Make (Digest)

module GOper = Graph.Oper.P (G)

let find_dune_library_package = function
  | {local = true; _} -> Some Local
  | {name; local = false; _} -> Opam_findlib.find_library_package name

let digest_map_of_dune_describe dune_describe =
  List.fold_left (fun digest_map entry ->
      match entry with
      | Library ({name; uid; local; _} as library) ->
        let package = find_dune_library_package library in (* TODO: extract *)
        Digest_map.add uid {V.package; name; digest = uid; local} digest_map
      | _ ->
        digest_map
    ) Digest_map.empty dune_describe

let g_of_modules parent modules =
  let fold_module g {name; module_deps; _} =
    let mod_: V.t = Module {parent; name} in
    let g = G.add_vertex g mod_ in
    match module_deps with
    | Some module_deps ->
      let fold_dep g dep =
        G.add_edge g mod_ (Module {parent; name=dep})
      in
      let g = List.fold_left fold_dep g module_deps.for_intf in
      List.fold_left fold_dep g module_deps.for_impl
    | None ->
      g (* TODO: need other exclusions? *)
  in
  List.fold_left fold_module G.empty modules

let find_library_module_name _library modules: string option =
  (* TODO: List.find_map isn't on OCaml 4.08 *)
  List.find_map (fun (m: module_) ->
      (* TODO: String.ends_with isn't on OCaml 4.08 *)
      match m.impl with
      | Some impl when String.ends_with ~suffix:".ml-gen" impl && String.ends_with ~suffix:"__" m.name ->
        Some (String.sub m.name 0 (String.length m.name - 2))
      | Some impl when String.ends_with ~suffix:".ml-gen" impl ->
        Some m.name
      | _ -> None
    ) modules

let g_of_library_modules ~tred_modules library modules =
  let parent: V.t = Library library in
  let g = g_of_modules parent modules in
  let g =
    match find_library_module_name library modules with
    | Some library_module_name ->
      let dune_module_name = library_module_name ^ "__" in
      if List.exists (fun (m: module_) -> m.name = dune_module_name) modules then
        G.remove_vertex g (Module {parent; name = dune_module_name})
      else
        List.fold_left (fun g (m: module_) ->
            if m.name <> library_module_name then
              G.add_edge g (Module {parent; name = library_module_name}) (Module {parent; name = m.name})
            else
              g
          ) g modules
    | None -> g
  in
  if tred_modules then
    GOper.transitive_reduction g
  else
    g

let g_of_executable_modules ~tred_modules executable modules =
  let parent: V.t = Executable executable in
  let g = g_of_modules parent modules in
  let g = G.remove_vertex g (Module {parent; name = "Dune__exe"}) in
  if tred_modules then
    GOper.transitive_reduction g
  else
    g

let g_of_libraries ~tred_libraries dune_describe =
  let digest_map = digest_map_of_dune_describe dune_describe in

  let g = List.fold_left (fun g entry ->
      match entry with
      | Library ({name; uid; local; requires; _} as library) ->
        let package = find_dune_library_package library in
        let lib: V.t = Library {package; name; digest = uid; local} in
        let g = G.add_vertex g lib in
        List.fold_left (fun g require ->
            G.add_edge g lib (Library (Digest_map.find require digest_map))
          ) g requires
      | Executables {names; requires; _} ->
        let package = Some Local in
        List.fold_left (fun g name ->
            let exe: V.t = Executable {package; name} in
            let g = G.add_vertex g exe in
            List.fold_left (fun g require ->
                G.add_edge g exe (Library (Digest_map.find require digest_map))
              ) g requires
          ) g names
      | _ ->
        g
    ) G.empty dune_describe
  in

  if tred_libraries then
    GOper.transitive_reduction g
  else
    g

let g_of_string ~tred_modules ~tred_libraries s =
  let dune_describe = Parsexp.Conv_single.parse_string_exn s t_of_sexp in

  let g = g_of_libraries ~tred_libraries dune_describe in

  let g = List.fold_left (fun g entry ->
      match entry with
      | Library ({name; uid; local; modules; _} as library) ->
        let package = find_dune_library_package library in
        let library: V.library = {package; name; digest = uid; local} in
        let g = GOper.union g (g_of_library_modules ~tred_modules library modules) in
        (* library-module edges *)
        if local then (
          let parent: V.t = Library library in
          match find_library_module_name library modules with
          | Some library_module_name ->
            G.add_edge g parent (Module {parent; name = library_module_name})
          | None ->
            List.fold_left (fun g (m: module_) ->
                G.add_edge g parent (Module {parent; name = m.name})
              ) g modules
        )
        else
          g
      | Executables {names; modules; _} ->
        let package = Some Local in
        let name = String.concat ", " names in
        let executable: V.executable = {package; name} in
        let g = GOper.union g (g_of_executable_modules ~tred_modules executable modules) in
        (* executable-module edges *)
        List.fold_left (fun g name ->
            let parent: V.t = Executable {package; name} in
            let executable_module_name = String.capitalize_ascii name in
            G.add_edge g parent (Module {parent; name = executable_module_name})
          ) g names
      | _ ->
        g
    ) g dune_describe
  in

  G.add_vertex g LocalPackageCluster
