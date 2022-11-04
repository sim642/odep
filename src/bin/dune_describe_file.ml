open Bos

open Std.Result_syntax

let dune_describe_file f t =
  let+ s = OS.File.read (Fpath.v f) in
  Depgraph.dune_describe_s s t

open Cmdliner

let dune_describe_file_a =
  let doc = Format.sprintf "File containing %s output." Arg.(doc_quote "dune describe workspace") in
  Arg.(required & pos 0 (some non_dir_file) None & info [] ~docv:"FILE" ~doc)
let dune_describe_file_t =
  Term.cli_parse_result Term.(const dune_describe_file $ dune_describe_file_a $ Common.type_a)
let dune_describe_file_c =
  let doc = Format.sprintf "Generate dependency graph from 'dune describe workspace' output." in
  Cmd.v (Cmd.info "dune-describe-file" ~doc) dune_describe_file_t
