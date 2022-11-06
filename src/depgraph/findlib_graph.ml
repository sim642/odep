open Common

module GOper = Graph.Oper.P (G)

let g_of_findlib ~tred_libraries ?depends () =
  let libraries =
    match depends with
    | Some depends -> Findlib.package_deep_ancestors [] [depends]
    | None -> Findlib.list_packages' ()
  in

  let g = List.fold_left (fun g library ->
      let package = Dune_describe_graph.find_library_package {Dune_describe.name = library; uid = ""; requires = []; local = false; modules = []} in
      let lib: V.t = Library {name = library; digest = ""; local = false; package} in
      let g = G.add_vertex g lib in
      let deps = Findlib.package_ancestors [] library in
      List.fold_left (fun g dep ->
          G.add_edge g lib (Library {name = dep; digest = ""; local = false; package = None})
        ) g deps
    ) G.empty libraries
  in

  if tred_libraries then
    GOper.transitive_reduction g
  else
    g
