open OpamTypes

open Common

module Opkg = OpamPackage
module Ofml = OpamFormula

module GOper = Graph.Oper.P (G)

let g_of_depends ~st ~env depends =
  let {u_installed; u_depends; u_depopts; _} =
    OpamSwitchState.universe st ~requested:Opkg.Name.Set.empty Query
  in

  let fold_all_depends f acc package =
    let deps = Opkg.Map.find package u_depends |> OpamPackageVar.filter_depends_formula ~env in
    let depopts = Opkg.Map.find package u_depopts |> OpamPackageVar.filter_depends_formula ~env in

    let acc = Ofml.fold_left (fun acc (name, _) ->
        f acc name
      ) acc deps
    in
    Ofml.fold_left (fun acc (name, _) ->
       f acc name
      ) acc depopts
  in

  let fold_package package g =
    let pkg: V.t = OpamPackage (Opkg.Name.to_string package.name) in
    let g = G.add_vertex g pkg in
    fold_all_depends (fun g name ->
        G.add_edge g pkg (OpamPackage (Opkg.Name.to_string name))
      ) g package
  in

  match depends with
  | None ->
    Opkg.Set.fold fold_package u_installed G.empty
  | Some depends ->
    let rec fold_deps_package g visited package =
      if Opkg.Set.mem package visited || not (Opkg.Set.mem package u_installed) then
        g
      else (
        let visited = Opkg.Set.add package visited in
        let g = fold_package package g in
        fold_all_depends (fun g name ->
            fold_deps_name g visited name
          ) g package
      )
    and fold_deps_name g visited name =
      fold_deps_package g visited (OpamSwitchState.get_package st name)
    in
    fold_deps_name G.empty Opkg.Set.empty (Opkg.Name.of_string depends)

let g_of_installed ~tred_packages ?depends ?rdepends () =
  let root = OpamStateConfig.opamroot () in
  OpamFormatConfig.init ();
  ignore (OpamStateConfig.load_defaults root);
  OpamCoreConfig.init ();
  OpamRepositoryConfig.init ();
  OpamStateConfig.init ~root_dir:root () ;
  OpamGlobalState.with_ `Lock_none @@ fun gt ->
  OpamSwitchState.with_ `Lock_none gt @@ fun st ->
  let env = OpamPackageVar.resolve st in

  let g = g_of_depends ~st ~env depends in
  ignore (rdepends);

  if tred_packages then
    GOper.transitive_reduction g
  else
    g
