module Dune_describe_graph = Dune_describe_graph
module Findlib_graph = Findlib_graph
module Opam_installed_graph = Opam_installed_graph


type output_type =
  | Dot
  | Mermaid

module Dot = Ocamlgraph_extra.Graphviz.Dot (Dot_graph.G)
module Mermaid = Ocamlgraph_extra.Mermaid.Make (Dot_graph.G)

let output t g =
  match t with
  | Dot -> Dot.output_graph stdout g
  | Mermaid -> Mermaid.fprint_graph Format.std_formatter g
