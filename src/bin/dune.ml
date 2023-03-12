open Bos

open Depgraph
open Common
open Std.Result_syntax

let run path (`Type type_) (`Tred_modules tred_modules) (`Tred_libraries tred_libraries) (`With_pps with_pps) =
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
      match with_pps with
      | None ->
        begin match OS.Cmd.(run_out Cmd.(dune_describe % "--with-pps") |> out_string) with
          | Ok (s, (_, `Exited 0)) ->
            Ok s
          | Ok (_, (_, `Exited _)) -> (* maybe dune < 3.7.0, which doesn't have --with-pps *)
            OS.Cmd.(run_out dune_describe |> out_string |> success)
          | r ->
            OS.Cmd.success r
        end
      | Some with_pps ->
        OS.Cmd.(run_out Cmd.(dune_describe %% on with_pps (v "--with-pps")) |> out_string |> success)
      ) ()
    |> Result.join
  in
  Dune_describe_graph.g_of_string ~tred_modules ~tred_libraries s
  |> output type_

open Cmdliner

let path =
  let doc = "Dune project location." in
  Arg.(value & pos 0 file "." & info [] ~docv:"PATH" ~doc)

let with_pps =
  let doc = "Include compile-time ppx dependencies." in
  Arg.(term_map (fun b -> `With_pps b) & value & opt (some bool) None & info ["with-pps"] ~docv:"BOOL" ~doc)

let term =
  Term.cli_parse_result Term.(const run $ path $ Common.type_ $ Common.tred_modules $ Common.tred_libraries $ with_pps)

let cmd =
  let doc = "Generate dependency graph from dune project." in
  Cmd.v (Cmd.info "dune" ~doc) term
