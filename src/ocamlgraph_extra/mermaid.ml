
module Graphviz0 = Graphviz
open Graph
open Format

module Graphviz = Graphviz0

module type Arg =
sig
  include Sig.G

  val vertex_name : V.t -> string
  val get_subgraph : V.t -> Graphviz.DotAttributes.subgraph option
  val edge_attributes: E.t -> Graphviz.DotAttributes.edge list
  val vertex_attributes: V.t -> Graphviz.DotAttributes.vertex list
end

module Make (X: Arg) =
struct
  let fprint_graph ppf g =
    let module SG = Map.Make(String) in
    let subgraphs = ref SG.empty in
    let root_vertices = ref [] in
    X.iter_vertex (function node ->
        match X.get_subgraph node with
        | None ->
          root_vertices := node :: !root_vertices
        | Some sg ->
          let (sg, nodes) =
            if SG.mem sg.sg_name !subgraphs then
              SG.find sg.sg_name !subgraphs
            else
              (sg, [])
          in
          subgraphs := SG.add sg.sg_name (sg, node :: nodes) !subgraphs
      ) g;

    let print_vertex ppf v =
      try
        let a = X.vertex_attributes v in
        let label = match List.find_opt (function `Label _ -> true | _ -> false) a with
          | Some (`Label label) -> label
          | _ -> X.vertex_name v
        in
        let shape = match List.find_opt (function `Shape _ -> true | _ -> false) a with
          | Some (`Shape `Diamond) -> format_of_string "{%s}"
          | Some (`Shape `Box) -> format_of_string "(%s)"
          | _ -> format_of_string "([%s])"
        in
        let style = match List.find_opt (function `Style _ -> true | _ -> false) a with
          | Some (`Style `Filled) -> fun ppf -> Format.fprintf ppf "@ style id%d fill:#BBB" (X.V.hash v)
          | Some (`Style `Invis) -> raise Exit (* TODO: filter beforehand *)
          | _ -> fun _ -> ()
        in
        fprintf ppf "id%d%(%s%)%t" (X.V.hash v) shape label style
      with Exit ->
        ()
    in

    let print_root_vertices ppf =
      pp_print_list print_vertex ppf !root_vertices
    in

    let rec print_subgraph ppf name =
      let sg, nodes = SG.find name !subgraphs in
      let children = SG.filter (fun _ (sg, _) -> sg.Graphviz.DotAttributes.sg_parent = Some name) !subgraphs in
      let label_opt = List.find_opt (function `Label _ -> true | _ -> false) sg.sg_attributes in
      let label = match label_opt with
        | Some (`Label label) -> label
        | _ -> name
      in
      let subs = List.map fst (SG.bindings children) in
      let mid ppf = match nodes, subs with
        | _ :: _, _ :: _ -> pp_print_space ppf ()
        | _, _ -> ()
      in
      fprintf ppf "@[<v 2>subgraph %s [\"%s\"]@ %a%t%a@]@ end"
        name
        label
        (pp_print_list print_vertex) nodes
        mid
        print_nested_subgraphs subs
    and print_nested_subgraphs ppf =
      pp_print_list print_subgraph ppf
    in
    let print_subgraphs ppf =
      let root_worklist = SG.filter (fun _ (sg, _) -> sg.Graphviz.DotAttributes.sg_parent = None) !subgraphs in
      print_nested_subgraphs ppf (List.map fst (SG.bindings root_worklist))
    in

    let print_edges ppf =
      X.iter_edges_e (fun e ->
          let a = X.edge_attributes e in
          let u = X.E.src e in
          let v = X.E.dst e in
          let uu =
            match List.find_opt (function `Ltail _ -> true | _ -> false) a with
            | Some (`Ltail x) -> x
            | _ -> "id" ^ string_of_int (X.V.hash u)
          in
          let style = match List.find_opt (function `Style _ -> true | _ -> false) a with
            | Some (`Style `Dotted) -> "-.->"
            | _ -> "-->"
          in
          let vv =
            match List.find_opt (function `Lhead _ -> true | _ -> false) a with
            | Some (`Lhead x) -> x
            | _ -> "id" ^ string_of_int (X.V.hash v)
          in
          fprintf ppf "%s%s%s@ " uu style vv
        ) g
    in

    fprintf ppf "@[<v 2>flowchart TD@ %t@ %t@ %t@]"
      print_root_vertices
      print_subgraphs
      print_edges
end
