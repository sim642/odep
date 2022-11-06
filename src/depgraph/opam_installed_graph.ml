open OpamTypes

open Common

module Opkg = OpamPackage
module Ofml = OpamFormula

module GOper = Graph.Oper.P (G)

let g_of_installed ~tred_packages ?depends ?rdepends () =
  ignore (depends);
  ignore (rdepends);

  let root = OpamStateConfig.opamroot () in
  OpamFormatConfig.init ();
  ignore (OpamStateConfig.load_defaults root);
  OpamCoreConfig.init ();
  OpamRepositoryConfig.init ();
  OpamStateConfig.init ~root_dir:root () ;
  OpamGlobalState.with_ `Lock_none @@ fun gt ->
  OpamSwitchState.with_ `Lock_none gt @@ fun st ->
  let env = OpamPackageVar.resolve st in

  let {u_installed; u_depends; u_depopts; _} =
    OpamSwitchState.universe st ~requested:Opkg.Name.Set.empty Query
  in

  let g = Opkg.Set.fold (fun package g ->
      let pkg: V.t = OpamPackage (Opkg.Name.to_string package.name) in
      let g = G.add_vertex g pkg in

      let deps = Opkg.Map.find package u_depends |> OpamPackageVar.filter_depends_formula ~env in
      let depopts = Opkg.Map.find package u_depopts |> OpamPackageVar.filter_depends_formula ~env in

      let g = Ofml.fold_left (fun g (name, _) ->
          G.add_edge g pkg (OpamPackage (Opkg.Name.to_string name))
        ) g deps
      in
      let g = Ofml.fold_left (fun g (name, _) ->
          G.add_edge g pkg (OpamPackage (Opkg.Name.to_string name))
        ) g depopts
      in
      g
    ) u_installed G.empty
  in

  if tred_packages then
    GOper.transitive_reduction g
  else
    g
