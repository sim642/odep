let run (`Type type_) (`Tred_libraries tred_libraries) =
  Depgraph.findlib ~tred_libraries type_

open Cmdliner

let term =
  Term.(const run $ Common.type_ $ Common.tred_libraries)

let cmd =
  let doc = Format.sprintf "Generate dependency graph from findlib libraries." in
  Cmd.v (Cmd.info "findlib" ~doc) term
