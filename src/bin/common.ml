open Cmdliner

open Depgraph

let type_a =
  let alts = [("dot", Dot); ("mermaid", Mermaid)] in
  let doc = Format.sprintf "Output type, %s." (Arg.doc_alts_enum alts) in
  Arg.(value & opt (enum alts) Dot & info ["t"; "type"] ~docv:"TYPE" ~doc)
