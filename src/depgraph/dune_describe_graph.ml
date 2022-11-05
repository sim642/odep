open Common
open Dune_describe

module Digest =
struct
  include String
  let hash = Hashtbl.hash
end
module DH = Hashtbl.Make (Digest)

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

let dune_describe_s s =
  let dune = Parsexp.Conv_single.parse_string_exn s t_of_sexp in

  let digest2library: V.library DH.t = DH.create 100 in
  List.iter (fun entry ->
      match entry with
      | Library ({name; uid; local; _} as library) ->
        let package = find_library_package library in
        DH.replace digest2library uid {package; name; digest = uid; local}
      | _ ->
        ()
    ) dune;

  let g =
    let fold_module parent g {name; module_deps} =
      let mod_: V.t = Module {parent; name} in
      let g = G.add_vertex g mod_ in
      let g = List.fold_left (fun g dep ->
          G.add_edge g mod_ (Module {parent; name=dep})
        ) g module_deps.for_intf
      in
      List.fold_left (fun g dep ->
          G.add_edge g mod_ (Module {parent; name=dep})
        ) g module_deps.for_impl
    in
    let g = List.fold_left (fun g entry ->
        match entry with
        | Library ({name; uid; local; requires; modules} as library) ->
          let package = find_library_package library in
          let lib: V.t = Library {package; name; digest = uid; local} in
          let g = G.add_vertex g lib in
          let g = List.fold_left (fun g require ->
              G.add_edge g lib (Library (DH.find digest2library require))
            ) g requires
          in
          let g = List.fold_left (fold_module lib) g modules in
          if local then (
            let cap_name = String.capitalize_ascii name in
            let g = G.add_edge g lib (Module {parent = lib; name = cap_name}) in
            if List.exists (fun (m: module_) -> m.name = cap_name ^ "__") modules then
              G.remove_vertex g (Module {parent = lib; name = cap_name ^ "__"})
            else
              List.fold_left (fun g (m: module_) ->
                  if m.name <> cap_name then
                    G.add_edge g (Module {parent = lib; name = cap_name}) (Module {parent = lib; name = m.name})
                  else
                    g
                ) g modules
          )
          else
            g
        | Executables {names; requires; modules} ->
          let package = Some Local in
          let g = List.fold_left (fun g name ->
              let exe: V.t = Executable {package; name} in
              let g = G.add_vertex g exe in
              List.fold_left (fun g require ->
                  G.add_edge g exe (Library (DH.find digest2library require))
                ) g requires
            ) g names
          in
          let name = String.concat ", " names in
          let g = List.fold_left (fold_module (Executable {package; name})) g modules in
          let g = List.fold_left (fun g name ->
              let exe: V.t = Executable {package; name} in
              G.add_edge g exe (Module {parent = exe; name = String.capitalize_ascii name})
            ) g names
          in
          G.remove_vertex g (Module {parent = Executable {package; name}; name = "Dune__exe"})
        | _ ->
          g
      ) G.empty dune
    in
    G.add_vertex g LocalPackageCluster
  in

  let g = GOper.transitive_reduction g in (* TODO: only on modules, not libraries/packages *)
  g
