open Bos

open Depgraph

open Std.Result_syntax

let dune_describe_file f t =
  let+ s = OS.File.read (Fpath.v f) in
  dune_describe_s s t

let dune_describe f t =
  let f = Fpath.v f in
  let* dir =
    let+ is_dir = OS.Dir.exists f in
    if is_dir then
      f
    else
      Fpath.parent f
  in
  let+ s = OS.Dir.with_current dir (fun () ->
      let dune_describe = Cmd.(v "dune" % "describe" % "workspace" % "--with-deps") in
      OS.Cmd.(run_out dune_describe |> out_string |> success)
    ) ()
    |> Result.join
  in
  dune_describe_s s t

open Cmdliner

let type_a =
  let alts = [("dot", Dot); ("mermaid", Mermaid)] in
  let doc = Format.sprintf "Output type, %s." (Arg.doc_alts_enum alts) in
  Arg.(value & opt (enum alts) Dot & info ["t"; "type"] ~docv:"TYPE" ~doc)

let dune_describe_file_a =
  let doc = Format.sprintf "File containing %s output." Arg.(doc_quote "dune describe workspace") in
  Arg.(required & pos 0 (some non_dir_file) None & info [] ~docv:"FILE" ~doc)
let dune_describe_file_t =
  Term.cli_parse_result Term.(const dune_describe_file $ dune_describe_file_a $ type_a)
let dune_describe_file_c =
  let doc = Format.sprintf "Generate dependency graph from 'dune describe workspace' output." in
  Cmd.v (Cmd.info "dune-describe-file" ~doc) dune_describe_file_t

let dune_describe_a =
  let doc = "Dune project location." in
  Arg.(value & pos 0 file "." & info [] ~docv:"PATH" ~doc)
let dune_describe_t =
  Term.cli_parse_result Term.(const dune_describe $ dune_describe_a $ type_a)
let dune_describe_c =
  let doc = "Generate dependency graph from dune project." in
  Cmd.v (Cmd.info "dune" ~doc) dune_describe_t


let cmd =
  let doc = "Generate dependency graphs for OCaml modules, libraries and packages." in
  let info = Cmd.info "depgraph" ~version:"%%VERSION%%" ~doc in
  Cmd.group info [dune_describe_c; dune_describe_file_c]

let () = exit (Cmd.eval cmd)
