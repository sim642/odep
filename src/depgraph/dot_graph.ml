open Common

module G =
struct
  module VV = V
  module EE = E
  include G

  let graph_attributes _ = [`Compound true]
  let vertex_attributes = function
    | VV.Executable _ ->
      [`Shape `Diamond]
    | Library {local = true; _} ->
      []
    | Library {local = false; _} ->
      [`Style `Filled]
    | Module {name; _} ->
      [`Shape `Box; `Label name]
    | LocalPackageCluster ->
      [`Fixedsize true; `Width 0.; `Height 0.; `Style `Invis; `Label ""]
    | OpamPackage _ ->
      [`Shape `Box]
    | SysPackage _ ->
      [`Shape `Box; `Style `Filled]
    | ExecutableCluster _ ->
      assert false
  let default_vertex_attributes _ = []
  let default_edge_attributes _ = []
  let rec vertex_name = function
    | VV.Executable {name; _} -> name
    | Library {name; _} -> name
    | Module {name; parent} -> vertex_name parent ^ "__" ^ name
    | LocalPackageCluster -> "local_package__"
    | OpamPackage package -> Opkg.Name.to_string package.name ^ "\n" ^ Opkg.Version.to_string package.version
    | SysPackage name -> name
    | ExecutableCluster names -> String.concat ", " names
  let local_package_subgraph = string_of_int (Hashtbl.hash (show_package Local))
  let get_subgraph = function
    | VV.Module {parent; _} ->
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (V.hash parent); sg_attributes = [`Label (vertex_name parent)]; sg_parent = Some local_package_subgraph}
    | Library {local = true; with_modules = true; _} as v ->
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (V.hash v); sg_attributes = [`Label (vertex_name v)]; sg_parent = Some local_package_subgraph}
    | Executable {cluster; with_modules = true; _} ->
      let v = VV.ExecutableCluster cluster in
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (V.hash v); sg_attributes = [`Label (vertex_name v)]; sg_parent = Some local_package_subgraph}
    | Library {local = false; package; _} ->
      begin match package with
        | Some package ->
          Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (Hashtbl.hash package); sg_attributes = [`Label (show_package package)]; sg_parent = None}
        | None -> None
      end
    | Library {local = true; with_modules = false; _}
    | Executable {with_modules = false; _}
    | LocalPackageCluster ->
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = local_package_subgraph; sg_attributes = [`Label (show_package Local)]; sg_parent = None}
    | OpamPackage _
    | SysPackage _ ->
      None
    | ExecutableCluster _ ->
      assert false
  let vertex_name v = Printf.sprintf "\"%s\"" (vertex_name v)
  let edge_attributes (u, e, v) =
    let label =
      match e with
      | EE.None -> []
      | OpamFormula {optional = false; version_formula} -> [`Label (Version_formula.show version_formula)]
      | OpamFormula {optional = true; version_formula} -> [`Style `Dotted; `Label (Version_formula.show version_formula)]
    in
    let ltail =
      (* TODO: extract check *)
      match u with
      | VV.Library {local = true; with_modules = true; _} | Executable {with_modules = true; _} ->
        let su = Option.get (get_subgraph u) in
        [`Ltail su.sg_name]
      | _ -> []
    in
    let lhead =
      (* TODO: extract check *)
      match v with
      | VV.Library {local = true; with_modules = true; _} | Executable {with_modules = true; _} ->
        let sv = Option.get (get_subgraph v) in
        [`Lhead sv.sg_name]
      | _ -> []
    in
    let minlen =
      (* TODO: extract check *)
      match u, v with
      | (VV.Library {local = true; with_modules = true; _} | Executable {with_modules = true; _}), (VV.Library {local = true; with_modules = true; _} | Executable {with_modules = true; _}) ->
        [`Minlen 2]
      | _ -> []
    in
    match get_subgraph u, get_subgraph v with
    | Some su, Some sv when su = sv -> label @ minlen
    | _, _ -> label @ ltail @ lhead @ minlen
end
