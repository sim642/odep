open Cmdliner

let term_map f term =
  Term.(const f $ term)

open Depgraph

let type_ =
  let alts = [("dot", Dot); ("mermaid", Mermaid)] in
  let doc = Format.sprintf "Output type, %s." (Arg.doc_alts_enum alts) in
  Arg.(term_map (fun b -> `Type b) & value & opt (enum alts) Dot & info ["t"; "type"] ~docv:"TYPE" ~doc)

let tred_modules =
  let doc = "Transitively reduce module dependencies." in
  Arg.(term_map (fun b -> `Tred_modules b) & value & opt bool true & info ["tred-modules"] ~docv:"BOOL" ~doc)

let tred_libraries =
  let doc = "Transitively reduce library dependencies." in
  Arg.(term_map (fun b -> `Tred_libraries b) & value & opt bool true & info ["tred-libraries"] ~docv:"BOOL" ~doc)

let with_modules =
  let doc = "Include modules in dune libraries." in
  Arg.(term_map (fun b -> `With_modules b) & value & opt bool true & info ["with-modules"] ~docv:"BOOL" ~doc)
