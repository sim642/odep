open Common
open Dune_describe

module Digest_map = Map.Make (Digest)

module GOper = Graph.Oper.P (G)

let opam_index = Opam_index.create ()

let find_library_package = function
  | {local = true; _} -> Some Local
  | {name; local = false; _} ->
    let main_name = List.hd (String.split_on_char '.' name) in
    match main_name with
    | "threads"
    | "unix"
    | "str"
    | "compiler-libs"
    | "bigarray"
    | "dynlink"
    | "ocamldoc"
    | "stdlib"
    | "bytes" ->
      Some Compiler
    | s ->
      Opam_index.Owner.find_opt s opam_index
      |> Option.map (fun {OpamPackage.name; _} -> Opam (OpamPackage.Name.to_string name))

let digest_map_of_dune_describe dune_describe =
  List.fold_left (fun digest_map entry ->
      match entry with
      | Library ({name; uid; local; _} as library) ->
        let package = find_library_package library in (* TODO: extract *)
        Digest_map.add uid {V.package; name; digest = uid; local} digest_map
      | _ ->
        digest_map
    ) Digest_map.empty dune_describe

let g_of_modules parent modules =
  let fold_module g {name; module_deps} =
    let mod_: V.t = Module {parent; name} in
    let fold_dep g dep =
      G.add_edge g mod_ (Module {parent; name=dep})
    in
    let g = G.add_vertex g mod_ in
    let g = List.fold_left fold_dep g module_deps.for_intf in
    List.fold_left fold_dep g module_deps.for_impl
  in
  List.fold_left fold_module G.empty modules

let g_of_library_modules ~tred_modules library modules =
  let parent: V.t = Library library in
  let g = g_of_modules parent modules in
  let g =
    let library_module_name = String.capitalize_ascii library.name in
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

let g_of_libraries dune_describe =
  let digest_map = digest_map_of_dune_describe dune_describe in

  List.fold_left (fun g entry ->
      match entry with
      | Library ({name; uid; local; requires; _} as library) ->
        let package = find_library_package library in
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

let dune_describe_s ~tred_modules s =
  let dune_describe = Parsexp.Conv_single.parse_string_exn s t_of_sexp in

  let g = g_of_libraries dune_describe in

  let g = List.fold_left (fun g entry ->
      match entry with
      | Library ({name; uid; local; modules; _} as library) ->
        let package = find_library_package library in
        let library: V.library = {package; name; digest = uid; local} in
        let g = GOper.union g (g_of_library_modules ~tred_modules library modules) in
        (* library-module edges *)
        let parent: V.t = Library library in
        if local then (
          let library_module_name = String.capitalize_ascii name in
          G.add_edge g parent (Module {parent; name = library_module_name})
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
