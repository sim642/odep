((executables
  ((names (depgraph))
   (requires
    (0d795e4f8b0b5925c69c21e02cc9103d
     b189f983487830cf14bdf171903b62da
     0bfbf12b36f339f0ba0e4c06ce88d48e
     b5f1ee68ba5bd9694aa0f66e022e50fe
     796cca509a5209af5a4a7fbdb4ba773c
     79dff1087e8ac06d99e3c542f1e29fa7
     c480a7c584d174c22d86dbdb79515d7d
     544ea0d9efd3c7a64c143afe7d1e17f9
     475f353b2705e034b0287d7ffe9e5225
     449445be7a24ce51e119d57e9e255d3f
     52603f9930efcca61c8e7216acb48efa))
   (modules
    (((name Opam_index)
      (impl (_build/default/src/opam_index.ml))
      (intf ())
      (cmt
       (_build/default/src/.depgraph.eobjs/byte/dune__exe__Opam_index.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Dune_describe)
      (impl (_build/default/src/dune_describe.ml))
      (intf ())
      (cmt
       (_build/default/src/.depgraph.eobjs/byte/dune__exe__Dune_describe.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Depgraph)
      (impl (_build/default/src/depgraph.ml))
      (intf ())
      (cmt (_build/default/src/.depgraph.eobjs/byte/dune__exe__Depgraph.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (Dune_describe Opam_index)))))
     ((name Dune__exe)
      (impl (_build/default/src/.depgraph.eobjs/dune__exe.ml-gen))
      (intf ())
      (cmt (_build/default/src/.depgraph.eobjs/byte/dune__exe.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))))
   (include_dirs (_build/default/src/.depgraph.eobjs/byte))))
 (library
  ((name astring)
   (uid 5a95678ac1f03a0ac7c00991ad1e2686)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/astring)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/astring))))
 (library
  ((name base.caml)
   (uid ce20dcd0c4bae81524a96662594adde2)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/base/caml)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/base/caml))))
 (library
  ((name bigarray)
   (uid 6760ceddf5017d0210b5d3e2eed22191)
   (local false)
   (requires (7c82c98fd32b5f392f3ad8c940ef1e9e))
   (source_dir /home/simmo/.opam/4.14.0/lib/ocaml)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/ocaml))))
 (library
  ((name bos)
   (uid 544ea0d9efd3c7a64c143afe7d1e17f9)
   (local false)
   (requires
    (efb90b03ee741e7d2bb821b2c395b799
     5a95678ac1f03a0ac7c00991ad1e2686
     e8ae26164630a0adddebdc6c1d7d6950
     e513e0e7f6de491e7321010ddbbc9fc8
     7c82c98fd32b5f392f3ad8c940ef1e9e
     6f7186adbc64b83bab803daac023f331))
   (source_dir /home/simmo/.opam/4.14.0/lib/bos)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/bos))))
 (library
  ((name cmdliner)
   (uid c480a7c584d174c22d86dbdb79515d7d)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/cmdliner)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/cmdliner))))
 (library
  ((name fmt)
   (uid e513e0e7f6de491e7321010ddbbc9fc8)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/fmt)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/fmt))))
 (library
  ((name fpath)
   (uid e8ae26164630a0adddebdc6c1d7d6950)
   (local false)
   (requires (5a95678ac1f03a0ac7c00991ad1e2686))
   (source_dir /home/simmo/.opam/4.14.0/lib/fpath)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/fpath))))
 (library
  ((name logs)
   (uid 6f7186adbc64b83bab803daac023f331)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/logs)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/logs))))
 (library
  ((name ocamlgraph)
   (uid 0d795e4f8b0b5925c69c21e02cc9103d)
   (local false)
   (requires (249b2edaf3cc552a247667041bb5f015))
   (source_dir /home/simmo/.opam/4.14.0/lib/ocamlgraph)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/ocamlgraph))))
 (library
  ((name ocamlgraph_extra)
   (uid b189f983487830cf14bdf171903b62da)
   (local true)
   (requires (0d795e4f8b0b5925c69c21e02cc9103d))
   (source_dir _build/default/src/ocamlgraph_extra)
   (modules
    (((name Mermaid)
      (impl (_build/default/src/ocamlgraph_extra/mermaid.ml))
      (intf ())
      (cmt
       (_build/default/src/ocamlgraph_extra/.ocamlgraph_extra.objs/byte/ocamlgraph_extra__Mermaid.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl (Graphviz)))))
     ((name Graphviz)
      (impl (_build/default/src/ocamlgraph_extra/graphviz.ml))
      (intf (_build/default/src/ocamlgraph_extra/graphviz.mli))
      (cmt
       (_build/default/src/ocamlgraph_extra/.ocamlgraph_extra.objs/byte/ocamlgraph_extra__Graphviz.cmt))
      (cmti
       (_build/default/src/ocamlgraph_extra/.ocamlgraph_extra.objs/byte/ocamlgraph_extra__Graphviz.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Ocamlgraph_extra)
      (impl (_build/default/src/ocamlgraph_extra/ocamlgraph_extra.ml-gen))
      (intf ())
      (cmt
       (_build/default/src/ocamlgraph_extra/.ocamlgraph_extra.objs/byte/ocamlgraph_extra.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))))
   (include_dirs
    (_build/default/src/ocamlgraph_extra/.ocamlgraph_extra.objs/byte))))
 (library
  ((name opam-core)
   (uid 406838902428f61d19d1d037750db6b6)
   (local false)
   (requires
    (69b0916f09495cc8be752e83ba603480
     0d795e4f8b0b5925c69c21e02cc9103d
     7c82c98fd32b5f392f3ad8c940ef1e9e
     6760ceddf5017d0210b5d3e2eed22191))
   (source_dir /home/simmo/.opam/4.14.0/lib/opam-core)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/opam-core))))
 (library
  ((name opam-file-format)
   (uid 3c9e4a3a52ee9402b639c9c1da3ce2da)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/opam-file-format)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/opam-file-format))))
 (library
  ((name opam-format)
   (uid 796cca509a5209af5a4a7fbdb4ba773c)
   (local false)
   (requires
    (406838902428f61d19d1d037750db6b6
     3c9e4a3a52ee9402b639c9c1da3ce2da
     69b0916f09495cc8be752e83ba603480))
   (source_dir /home/simmo/.opam/4.14.0/lib/opam-format)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/opam-format))))
 (library
  ((name opam-repository)
   (uid aecd759f08843cc4d15292641001294f)
   (local false)
   (requires (796cca509a5209af5a4a7fbdb4ba773c))
   (source_dir /home/simmo/.opam/4.14.0/lib/opam-repository)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/opam-repository))))
 (library
  ((name opam-state)
   (uid 79dff1087e8ac06d99e3c542f1e29fa7)
   (local false)
   (requires (aecd759f08843cc4d15292641001294f))
   (source_dir /home/simmo/.opam/4.14.0/lib/opam-state)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/opam-state))))
 (library
  ((name parsexp)
   (uid b5f1ee68ba5bd9694aa0f66e022e50fe)
   (local false)
   (requires
    (449445be7a24ce51e119d57e9e255d3f ce20dcd0c4bae81524a96662594adde2))
   (source_dir /home/simmo/.opam/4.14.0/lib/parsexp)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/parsexp))))
 (library
  ((name ppx_deriving.runtime)
   (uid 52603f9930efcca61c8e7216acb48efa)
   (local false)
   (requires (ca6cc2b0189077cce731d5327e658aa4))
   (source_dir /home/simmo/.opam/4.14.0/lib/ppx_deriving/runtime)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/ppx_deriving/runtime))))
 (library
  ((name ppx_sexp_conv.runtime-lib)
   (uid 475f353b2705e034b0287d7ffe9e5225)
   (local false)
   (requires (449445be7a24ce51e119d57e9e255d3f))
   (source_dir /home/simmo/.opam/4.14.0/lib/ppx_sexp_conv/runtime-lib)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/ppx_sexp_conv/runtime-lib))))
 (library
  ((name re)
   (uid 69b0916f09495cc8be752e83ba603480)
   (local false)
   (requires (092c274fe179bf76244efc6236abbb42))
   (source_dir /home/simmo/.opam/4.14.0/lib/re)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/re))))
 (library
  ((name result)
   (uid ca6cc2b0189077cce731d5327e658aa4)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/result)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/result))))
 (library
  ((name rresult)
   (uid efb90b03ee741e7d2bb821b2c395b799)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/rresult)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/rresult))))
 (library
  ((name seq)
   (uid 092c274fe179bf76244efc6236abbb42)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/seq)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/seq))))
 (library
  ((name sexplib)
   (uid 0bfbf12b36f339f0ba0e4c06ce88d48e)
   (local false)
   (requires
    (6760ceddf5017d0210b5d3e2eed22191
     b5f1ee68ba5bd9694aa0f66e022e50fe
     449445be7a24ce51e119d57e9e255d3f))
   (source_dir /home/simmo/.opam/4.14.0/lib/sexplib)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/sexplib))))
 (library
  ((name sexplib0)
   (uid 449445be7a24ce51e119d57e9e255d3f)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/sexplib0)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/sexplib0))))
 (library
  ((name stdlib-shims)
   (uid 249b2edaf3cc552a247667041bb5f015)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/stdlib-shims)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/stdlib-shims))))
 (library
  ((name unix)
   (uid 7c82c98fd32b5f392f3ad8c940ef1e9e)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/4.14.0/lib/ocaml)
   (modules ())
   (include_dirs (/home/simmo/.opam/4.14.0/lib/ocaml)))))
