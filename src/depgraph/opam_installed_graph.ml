open OpamTypes

open Common
open Std.Common_syntax

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

    let fold_depend ~optional acc (name, version_formula) =
      match OpamSwitchState.find_installed_package_by_name st name with
      | package -> f acc package optional version_formula
      | exception Not_found -> acc
    in

    let acc = Ofml.fold_left (fold_depend ~optional:false) acc deps in
    Ofml.fold_left (fold_depend ~optional:true) acc depopts
  in

  let fold_all_depexts f acc package =
    let depexts = OpamSwitchState.depexts st package in
    OpamSysPkg.Set.fold (fun depext acc ->
        f acc depext
      ) depexts acc
  in

  let fold_package package g =
    let pkg: V.t = OpamPackage package in
    let g = G.add_vertex g pkg in
    let g = fold_all_depends (fun g depend_package optional version_formula ->
        G.add_edge_e g (pkg, OpamFormula {optional; version_formula}, OpamPackage depend_package)
      ) g package
    in
    fold_all_depexts (fun g depext ->
        G.add_edge_e g (pkg, None, SysPackage (OpamSysPkg.to_string depext))
      ) g package
  in

  match depends with
  | None ->
    Opkg.Set.fold fold_package u_installed G.empty
  | Some depends ->
    let depends_package = OpamSwitchState.find_installed_package_by_name st (Opkg.Name.of_string depends) in
    let rec fold_deps g visited package =
      if Opkg.Set.mem package visited then
        g
      else (
        let visited = Opkg.Set.add package visited in
        let g = fold_package package g in
        fold_all_depends (fun g depend_package _ _ ->
            fold_deps g visited depend_package
          ) g package
      )
    in
    fold_deps G.empty Opkg.Set.empty depends_package

let g_of_rdepends ~st ~env rdepends =
  let {u_installed; u_depends; u_depopts; _} =
    OpamSwitchState.universe st ~requested:Opkg.Name.Set.empty Query
  in

  let fold_all_depends f acc package =
    let deps = Opkg.Map.find package u_depends |> OpamPackageVar.filter_depends_formula ~env in
    let depopts = Opkg.Map.find package u_depopts |> OpamPackageVar.filter_depends_formula ~env in

    let fold_depend ~optional acc (name, version_formula) =
      match OpamSwitchState.find_installed_package_by_name st name with
      | package -> f acc package optional version_formula
      | exception Not_found -> acc
    in

    let acc = Ofml.fold_left (fold_depend ~optional:false) acc deps in
    Ofml.fold_left (fold_depend ~optional:true) acc depopts
  in

  let rdeps_map = Opkg.Set.fold (fun package rdeps_map ->
      fold_all_depends (fun rdeps_map depend_package optional version_formula ->
          Opkg.Map.update depend_package (fun rdeps ->
              Opkg.Map.add package (optional, version_formula) rdeps
            ) Opkg.Map.empty rdeps_map
        ) rdeps_map package
    ) u_installed Opkg.Map.empty
  in

  let rec fold_rdeps g package =
    let pkg: V.t = OpamPackage package in
    let g = G.add_vertex g pkg in
    let rdeps =
      match Opkg.Map.find_opt package rdeps_map with
      | Some rdeps -> rdeps
      | None -> Opkg.Map.empty
    in
    Opkg.Map.fold (fun rdepend_package (optional, version_formula) g ->
        let g = fold_rdeps g rdepend_package in
        G.add_edge_e g (OpamPackage rdepend_package, OpamFormula {optional; version_formula}, pkg)
      ) rdeps g
  in
  let rdepends_package = OpamSwitchState.find_installed_package_by_name st (Opkg.Name.of_string rdepends) in
  fold_rdeps G.empty rdepends_package

let g_of_installed ~tred_packages ?depends ?rdepends () =
  let root = OpamStateConfig.opamroot () in
  OpamFormatConfig.init ();
  ignore (OpamStateConfig.load_defaults root);
  OpamCoreConfig.init ();
  OpamRepositoryConfig.init ();
  OpamStateConfig.init ~root_dir:root ();
  let@ gt = OpamGlobalState.with_ `Lock_none in
  let@ st = OpamSwitchState.with_ `Lock_none gt in
  let env = OpamPackageVar.resolve st in

  let g =
    match depends, rdepends with
    | depends, None -> g_of_depends ~st ~env depends
    | None, Some rdepends -> g_of_rdepends ~st ~env rdepends
    | depends, Some rdepends ->
      GOper.intersect (g_of_depends ~st ~env depends) (g_of_rdepends ~st ~env rdepends)
  in

  if tred_packages then
    GOper.transitive_reduction g
  else
    g
