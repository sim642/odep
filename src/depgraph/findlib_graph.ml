open Common

module String_set = Set.Make (String)
module String_map = Map.Make (String)

module GOper = Graph.Oper.P (G)

let g_of_depends depends =
  let libraries =
    match depends with
    | Some depends -> Findlib.package_deep_ancestors [] [depends]
    | None -> Findlib.list_packages' ()
  in

  List.fold_left (fun g library ->
      let package = Dune_describe_graph.find_library_package {Dune_describe.name = library; uid = ""; requires = []; local = false; modules = []} in
      let lib: V.t = Library {name = library; digest = ""; local = false; package} in
      let g = G.add_vertex g lib in
      let deps = Findlib.package_ancestors [] library in
      List.fold_left (fun g dep ->
          G.add_edge g lib (Library {name = dep; digest = ""; local = false; package = None})
        ) g deps
    ) G.empty libraries

let g_of_rdepends rdepends =
  let libraries = Findlib.list_packages' () in
  let rdeps_map = List.fold_left (fun rdeps_map library ->
      let deps = Findlib.package_ancestors [] library in
      List.fold_left (fun rdeps_map dep ->
          String_map.update dep (fun rdeps ->
              let rdeps =
                match rdeps with
                | Some rdeps -> rdeps
                | None -> String_set.empty
              in
              Some (String_set.add library rdeps)
            ) rdeps_map
        ) rdeps_map deps
    ) String_map.empty libraries
  in

  let rec fold_rdeps g library =
    let package = Dune_describe_graph.find_library_package {Dune_describe.name = library; uid = ""; requires = []; local = false; modules = []} in
    let lib: V.t = Library {name = library; digest = ""; local = false; package} in
    let g = G.add_vertex g lib in
    let rdeps =
      match String_map.find_opt library rdeps_map with
      | Some rdeps -> rdeps
      | None -> String_set.empty
    in
    String_set.fold (fun rdep g ->
        let g = fold_rdeps g rdep in
        G.add_edge g (Library {name = rdep; digest = ""; local = false; package = None}) lib
      ) rdeps g
  in
  fold_rdeps G.empty rdepends

let g_of_findlib ~tred_libraries ?depends ?rdepends () =
  let g =
    match depends, rdepends with
    | depends, None -> g_of_depends depends
    | None, Some rdepends -> g_of_rdepends rdepends
    | Some _, Some _ -> failwith "TODO both"
  in

  if tred_libraries then
    GOper.transitive_reduction g
  else
    g
