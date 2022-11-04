type output_type =
  | Dot
  | Mermaid


module Opam_find =
struct
  let opam_index = Opam_index.create ()
  let opam_find s = match String.split_on_char '.' s with
    | ("threads" | "unix" | "str" | "compiler-libs" | "bigarray" | "dynlink" | "ocamldoc" | "stdlib" | "bytes") :: _ -> Some "(compiler)"
    | s :: _ ->
      Opam_index.Owner.find_opt s opam_index
      |> Option.map (fun {OpamPackage.name; _} -> OpamPackage.Name.to_string name)
    | [] -> assert false
end

module DotG = Dot_graph.Make (Opam_find)

module Dot = Ocamlgraph_extra.Graphviz.Dot (DotG)
module Mermaid = Ocamlgraph_extra.Mermaid.Make (DotG)


let dune_describe_s s t =
  let g = Dune_describe_graph.dune_describe_s s in
  match t with
  | Dot -> Dot.output_graph stdout g
  | Mermaid -> Mermaid.fprint_graph Format.std_formatter g
