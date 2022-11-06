type output_type =
  | Dot
  | Mermaid

module DotG = Dot_graph.G

module Dot = Ocamlgraph_extra.Graphviz.Dot (DotG)
module Mermaid = Ocamlgraph_extra.Mermaid.Make (DotG)


let dune_describe_s ~tred_modules ~tred_libraries s t =
  let g = Dune_describe_graph.dune_describe_s ~tred_modules ~tred_libraries s in
  match t with
  | Dot -> Dot.output_graph stdout g
  | Mermaid -> Mermaid.fprint_graph Format.std_formatter g

let findlib ~tred_libraries t =
  let g = Findlib_graph.g_of_findlib ~tred_libraries in
  match t with
  | Dot -> Dot.output_graph stdout g
  | Mermaid -> Mermaid.fprint_graph Format.std_formatter g
