open Cmdliner

let cmd =
  let doc = "Generate dependency graphs for OCaml modules, libraries and packages." in
  let info = Cmd.info "depgraph" ~version:"%%VERSION%%" ~doc in
  Cmd.group info [Dune.dune_describe_c; Dune_describe_file.dune_describe_file_c]

let () = exit (Cmd.eval cmd)
