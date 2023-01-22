(lang dune 2.5)

(name odep)

(generate_opam_files true)

(source (github sim642/odep))
(authors "Simmo Saan")
(maintainers "Simmo Saan <simmo.saan@gmail.com>")
(license MIT)

(package
 (name odep)
 (synopsis "Dependency graphs for OCaml modules, libraries and packages.")
 (depends
  (ocaml (>= 4.08))
  sexplib
  ppx_sexp_conv
  parsexp
  (opam-core (>= 2.1.0))
  (opam-state (>= 2.1.0))
  opam-format
  ocamlfind
  cmdliner
  bos
  ppx_deriving))
