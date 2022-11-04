open Bos

open Std.Result_syntax

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
  Depgraph.dune_describe_s s t

open Cmdliner

let dune_describe_a =
  let doc = "Dune project location." in
  Arg.(value & pos 0 file "." & info [] ~docv:"PATH" ~doc)
let dune_describe_t =
  Term.cli_parse_result Term.(const dune_describe $ dune_describe_a $ Common.type_a)
let dune_describe_c =
  let doc = "Generate dependency graph from dune project." in
  Cmd.v (Cmd.info "dune" ~doc) dune_describe_t
