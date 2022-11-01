
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
    X.iter_vertex (function node ->
        match X.get_subgraph node with
        | None -> ()
        | Some sg ->
          let (sg, nodes) =
            if SG.mem sg.sg_name !subgraphs then
              SG.find sg.sg_name !subgraphs
            else
              (sg, [])
          in
          subgraphs := SG.add sg.sg_name (sg, node :: nodes) !subgraphs
      ) g;

    fprintf ppf "@[<v 2>graph TD@ ";

    (* X.iter_vertex (fun v ->
        fprintf ppf "id%d(%s)\n" (X.V.hash v) (X.vertex_name v)
      ) g; *)

    let rec print_nested_subgraphs ppf = function
      | [] ->
        () (* no more work to do, so terminate *)
      | name :: worklist ->
        let sg, nodes = SG.find name !subgraphs in
        let children = SG.filter (fun _ (sg, _) -> sg.Graphviz.DotAttributes.sg_parent = Some name) !subgraphs in
        let label_opt = List.find_opt (function `Label _ -> true | _ -> false) sg.sg_attributes in
        let label = match label_opt with
          | Some (`Label label) -> label
          | _ -> name
        in
        fprintf ppf "@[<v 2>subgraph %s [\"%s\"]@ %t%t@]@ end@ "
          name
          label
          (fun ppf ->
              (List.iter (fun v ->
                  try
                    let a = X.vertex_attributes v in
                    let (shape1, shape2) = match List.find_opt (function `Shape _ -> true | _ -> false) a with
                      | Some (`Shape `Diamond) -> "{", "}"
                      | Some (`Shape `Box) -> "(", ")"
                      | _ -> "([", "])"
                    in
                    let style = match List.find_opt (function `Style _ -> true | _ -> false) a with
                      | Some (`Style `Filled) -> fun ppf -> Format.fprintf ppf "@ style id%d fill:#BBB" (X.V.hash v)
                      | Some (`Style `Invis) -> raise Exit
                      | _ -> fun _ -> ()
                    in
                    fprintf ppf "id%d%s%s%s%t@ " (X.V.hash v) shape1 (X.vertex_name v) shape2 style
                  with Exit ->
                    ()
                ) nodes)
          )
          (fun ppf ->
              print_nested_subgraphs ppf (List.map fst (SG.bindings children))
          );

        print_nested_subgraphs ppf worklist
    in
    let print_subgraphs ppf =
      let root_worklist = SG.filter (fun _ (sg, _) -> sg.Graphviz.DotAttributes.sg_parent = None) !subgraphs in
      print_nested_subgraphs ppf (List.map fst (SG.bindings root_worklist))
    in
    print_subgraphs ppf;

    X.iter_edges_e (fun e ->
        let a = X.edge_attributes e in
        let u = X.E.src e in
        let v = X.E.dst e in
        let uu =
          match List.find_opt (function `Ltail _ -> true | _ -> false) a with
          | Some (`Ltail x) -> x
          | _ -> "id" ^ string_of_int (X.V.hash u)
        in
        let vv =
          match List.find_opt (function `Lhead _ -> true | _ -> false) a with
          | Some (`Lhead x) -> x
          | _ -> "id" ^ string_of_int (X.V.hash v)
        in
        fprintf ppf "%s-->%s@ " uu vv
      ) g;

    fprintf ppf "@]"
end
