(lang dune 2.5)

(name depgraph)

(generate_opam_files true)

(source (github sim642/ocaml-depgraph))
(authors "Simmo Saan")
(maintainers "Simmo Saan <simmo.saan@gmail.com>")
(license MIT)

(package
 (name depgraph)
 (synopsis "Dependency graphs for OCaml modules, libraries and packages.")
 (depends
  sexplib
  ppx_sexp_conv
  parsexp
  opam-state
  opam-format
  ocamlfind
  cmdliner
  bos
  ppx_deriving))
