open Cmdliner

let cmds = [
  Dune.cmd;
  Dune_describe_file.cmd;
  Findlib.cmd;
  Opam_installed.cmd;
]

let cmd =
  let doc = "Generate dependency graphs for OCaml modules, libraries and packages." in
  let info = Cmd.info "odep" ~version:"%%VERSION%%" ~doc in
  Cmd.group info cmds

let () = exit (Cmd.eval cmd)
