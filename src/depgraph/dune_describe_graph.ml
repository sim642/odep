open Common
open Dune_describe

module Digest =
struct
  include String
  let hash = Hashtbl.hash
end
module DH = Hashtbl.Make (Digest)

module GOper = Graph.Oper.P (G)

let dune_describe_s s =
  let dune = Parsexp.Conv_single.parse_string_exn s t_of_sexp in

  let digest2library: V.library DH.t = DH.create 100 in
  List.iter (fun entry ->
      match entry with
      | Library {name; uid; local; _} ->
        DH.replace digest2library uid {name; digest = uid; local}
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
        | Library {name; uid; local; requires; modules} ->
          let lib: V.t = Library {name; digest = uid; local} in
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
          let g = List.fold_left (fun g name ->
              let exe: V.t = Executable name in
              let g = G.add_vertex g exe in
              List.fold_left (fun g require ->
                  G.add_edge g exe (Library (DH.find digest2library require))
                ) g requires
            ) g names
          in
          let name = String.concat ", " names in
          let g = List.fold_left (fold_module (Executable name)) g modules in
          let g = List.fold_left (fun g name ->
              let exe: V.t = Executable name in
              G.add_edge g exe (Module {parent = exe; name = String.capitalize_ascii name})
            ) g names
          in
          G.remove_vertex g (Module {parent = Executable name; name = "Dune__exe"})
        | _ ->
          g
      ) G.empty dune
    in
    G.add_vertex g LocalPackageCluster
  in

  let g = GOper.transitive_reduction g in (* TODO: only on modules, not libraries/packages *)
  g
