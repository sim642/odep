open Dune_describe

let dune = Parsexp_io.load_conv_exn Single t_of_sexp ~filename:"deps2.txt"

module V =
struct
  include String
  let hash = Hashtbl.hash
end
module G = Graph.Persistent.Digraph.Concrete (V)

module SH = Hashtbl.Make (V)
let digest2name = SH.create 100

let () =
  List.iter (fun entry ->
      match entry with
      | Library {name; uid; _} ->
        SH.replace digest2name uid name
      | _ ->
        ()
    ) dune

let g =
  List.fold_left (fun g entry ->
      match entry with
      | Library {name; requires; _} ->
        let g = G.add_vertex g name in
        List.fold_left (fun g require ->
            G.add_edge g name (SH.find digest2name require)
          ) g requires
      | Executables {names; requires; _} ->
        List.fold_left (fun g name ->
            let g = G.add_vertex g name in
            List.fold_left (fun g require ->
                G.add_edge g name (SH.find digest2name require)
              ) g requires
          ) g names
      | _ ->
        g
    ) G.empty dune

module DG =
struct
  include G

  let get_subgraph _ = None
  let graph_attributes _ = []
  let vertex_attributes _ = []
  let default_vertex_attributes _ = []
  let edge_attributes _ = []
  let default_edge_attributes _ = []
  let vertex_name v = "\"" ^ v ^ "\""
end

module D = Graph.Graphviz.Dot (DG)

let () =
  D.output_graph stdout g
