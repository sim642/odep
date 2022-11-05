open Bos

open Std.Result_syntax

let run path (`Type type_) (`Tred_modules tred_modules) =
  let f = Fpath.v path in
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
  Depgraph.dune_describe_s ~tred_modules s type_

open Cmdliner

let path =
  let doc = "Dune project location." in
  Arg.(value & pos 0 file "." & info [] ~docv:"PATH" ~doc)

let term =
  Term.cli_parse_result Term.(const run $ path $ Common.type_ $ Common.tred_modules)

let cmd =
  let doc = "Generate dependency graph from dune project." in
  Cmd.v (Cmd.info "dune" ~doc) term
