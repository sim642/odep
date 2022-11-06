let run (`Type type_) (`Tred_libraries tred_libraries) depends =
  Depgraph.findlib ~tred_libraries ?depends type_

open Cmdliner

let depends =
  let doc = "Findlib library whose dependencies to include." in
  Arg.(value & opt (some string) None & info ["d"; "depends"] ~docv:"LIBRARY" ~doc)

let term =
  Term.(const run $ Common.type_ $ Common.tred_libraries $ depends)

let cmd =
  let doc = Format.sprintf "Generate dependency graph from findlib libraries." in
  Cmd.v (Cmd.info "findlib" ~doc) term
