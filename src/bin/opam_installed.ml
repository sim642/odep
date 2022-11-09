open Common

let run (`Type type_) (`Tred_packages tred_packages) (`Depends depends) (`Rdepends rdepends) =
  Depgraph.Opam_installed_graph.g_of_installed ~tred_packages ?depends ?rdepends ()
  |> Depgraph.output type_

open Cmdliner

let tred_packages =
  let doc = "Transitively reduce package dependencies." in
  Arg.(term_map (fun b -> `Tred_packages b) & value & opt bool true & info ["tred-packages"] ~docv:"BOOL" ~doc)

let depends =
  let doc = "Opam package whose dependencies to include." in
  Arg.(term_map (fun b -> `Depends b) & value & opt (some string) None & info ["d"; "depends"] ~docv:"PACKAGE" ~doc)

let rdepends =
  let doc = "Opam package whose reverse dependencies to include." in
  Arg.(term_map (fun b -> `Rdepends b) & value & opt (some string) None & info ["rdepends"] ~docv:"PACKAGE" ~doc)

let term =
  Term.(const run $ Common.type_ $ tred_packages $ depends $ rdepends)

let cmd =
  let doc = Format.sprintf "Generate dependency graph from installed opam packages." in
  Cmd.v (Cmd.info "opam-installed" ~doc) term
