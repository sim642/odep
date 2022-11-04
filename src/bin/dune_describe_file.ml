open Bos

open Std.Result_syntax

let run file type_ =
  let+ s = OS.File.read (Fpath.v file) in
  Depgraph.dune_describe_s s type_

open Cmdliner

let file =
  let doc = Format.sprintf "File containing %s output." Arg.(doc_quote "dune describe workspace") in
  Arg.(required & pos 0 (some non_dir_file) None & info [] ~docv:"FILE" ~doc)

let term =
  Term.cli_parse_result Term.(const run $ file $ Common.type_)

let cmd =
  let doc = Format.sprintf "Generate dependency graph from 'dune describe workspace' output." in
  Cmd.v (Cmd.info "dune-describe-file" ~doc) term
