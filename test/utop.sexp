((root /home/simmo/Desktop/utop)
 (build_context _build/default)
 (executables
  ((names (modules))
   (requires ())
   (modules
    (((name Modules)
      (impl (_build/default/src/top/expunge/modules.ml))
      (intf ())
      (cmt
       (_build/default/src/top/expunge/.modules.eobjs/byte/dune__exe__Modules.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/src/top/expunge/.modules.eobjs/byte))))
 (executables
  ((names (utop))
   (requires (eba52aea357a20d8febfb159c918d0ec))
   (modules
    (((name Utop)
      (impl (_build/default/src/top/utop.ml))
      (intf ())
      (cmt (_build/default/src/top/.utop.eobjs/byte/dune__exe__Utop.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/src/top/.utop.eobjs/byte))))
 (executables
  ((names (test_program))
   (requires (eba52aea357a20d8febfb159c918d0ec))
   (modules
    (((name Test_program)
      (impl (_build/default/examples/interact/test_program.ml))
      (intf (_build/default/examples/interact/test_program.mli))
      (cmt
       (_build/default/examples/interact/.test_program.eobjs/byte/dune__exe__Test_program.cmt))
      (cmti
       (_build/default/examples/interact/.test_program.eobjs/byte/dune__exe__Test_program.cmti))
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/examples/interact/.test_program.eobjs/byte))))
 (executables
  ((names (myutop))
   (requires (eba52aea357a20d8febfb159c918d0ec))
   (modules
    (((name Myutop)
      (impl (_build/default/examples/custom-utop/myutop.ml))
      (intf ())
      (cmt
       (_build/default/examples/custom-utop/.myutop.eobjs/byte/dune__exe__Myutop.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/examples/custom-utop/.myutop.eobjs/byte))))
 (library
  ((name bigarray)
   (uid 6760ceddf5017d0210b5d3e2eed22191)
   (local false)
   (requires (7c82c98fd32b5f392f3ad8c940ef1e9e))
   (source_dir /home/simmo/dev/odep/_opam/lib/ocaml)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocaml))))
 (library
  ((name bytes)
   (uid e2f5526b9354a4f612f1d6d14ec078e3)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/bytes)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/bytes))))
 (library
  ((name compiler-libs)
   (uid c39d8e11db2363236e69af7750ce7b9a)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/ocaml/compiler-libs)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocaml/compiler-libs))))
 (library
  ((name compiler-libs.bytecomp)
   (uid afc871c3b524012cc5a4d133aa66e7b4)
   (local false)
   (requires (c9367091ddd9a70d99fc22ede348f17c))
   (source_dir /home/simmo/dev/odep/_opam/lib/ocaml/compiler-libs)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocaml/compiler-libs))))
 (library
  ((name compiler-libs.common)
   (uid c9367091ddd9a70d99fc22ede348f17c)
   (local false)
   (requires (c39d8e11db2363236e69af7750ce7b9a))
   (source_dir /home/simmo/dev/odep/_opam/lib/ocaml/compiler-libs)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocaml/compiler-libs))))
 (library
  ((name compiler-libs.toplevel)
   (uid abcbdd0aea8d86fe67a684f8b8691323)
   (local false)
   (requires (afc871c3b524012cc5a4d133aa66e7b4))
   (source_dir /home/simmo/dev/odep/_opam/lib/ocaml/compiler-libs)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocaml/compiler-libs))))
 (library
  ((name findlib.internal)
   (uid f451d1982b74ddc2fd6ffa4a3849bacb)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/findlib)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/findlib))))
 (library
  ((name findlib.top)
   (uid 3c8753e4f7ad3c5eed8710e5f348ed8d)
   (local false)
   (requires (f451d1982b74ddc2fd6ffa4a3849bacb))
   (source_dir /home/simmo/dev/odep/_opam/lib/findlib)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/findlib))))
 (library
  ((name lambda-term)
   (uid 1faecf7e9ee5db2ab95bd0bd05ff759b)
   (local false)
   (requires
    (6f7186adbc64b83bab803daac023f331
     0ff0011e176aecf70f878ecc9b707ff2
     8adaafe008a1b37628b004ff52e0a608
     122d2ffe477216d4ba4698103cdce6a7
     facfb72f245851e7e8ae6596411102e3
     120abab954d15072406e17e01e57f300
     91dd39568fff5b6a8439ac1c1146a149
     97825b343525e449e5749dcaaab5793c))
   (source_dir /home/simmo/dev/odep/_opam/lib/lambda-term)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/lambda-term))))
 (library
  ((name logs)
   (uid 6f7186adbc64b83bab803daac023f331)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/logs)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/logs))))
 (library
  ((name logs.lwt)
   (uid 0ff0011e176aecf70f878ecc9b707ff2)
   (local false)
   (requires
    (6f7186adbc64b83bab803daac023f331 8adaafe008a1b37628b004ff52e0a608))
   (source_dir /home/simmo/dev/odep/_opam/lib/logs/lwt)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/logs/lwt))))
 (library
  ((name lwt)
   (uid 8adaafe008a1b37628b004ff52e0a608)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/lwt)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/lwt))))
 (library
  ((name lwt.unix)
   (uid 122d2ffe477216d4ba4698103cdce6a7)
   (local false)
   (requires
    (6760ceddf5017d0210b5d3e2eed22191
     8adaafe008a1b37628b004ff52e0a608
     aafd0a3a6151b2232384e41fdc8276d7
     eca627e6b6675dc07e9c77a66f206191
     7c82c98fd32b5f392f3ad8c940ef1e9e))
   (source_dir /home/simmo/dev/odep/_opam/lib/lwt/unix)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/lwt/unix))))
 (library
  ((name lwt_react)
   (uid facfb72f245851e7e8ae6596411102e3)
   (local false)
   (requires
    (8adaafe008a1b37628b004ff52e0a608 a1ddd16d653f58b7d989a95af129ee51))
   (source_dir /home/simmo/dev/odep/_opam/lib/lwt_react)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/lwt_react))))
 (library
  ((name mew)
   (uid c1f5858f17551df5f3139f8b5e29078d)
   (local false)
   (requires
    (ca6cc2b0189077cce731d5327e658aa4 769bfb0b12c5e2c267f45c71c360bc33))
   (source_dir /home/simmo/dev/odep/_opam/lib/mew)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/mew))))
 (library
  ((name mew_vi)
   (uid 91dd39568fff5b6a8439ac1c1146a149)
   (local false)
   (requires
    (c1f5858f17551df5f3139f8b5e29078d a1ddd16d653f58b7d989a95af129ee51))
   (source_dir /home/simmo/dev/odep/_opam/lib/mew_vi)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/mew_vi))))
 (library
  ((name ocplib-endian)
   (uid 805a2f924110b363da48e53aa58ca446)
   (local false)
   (requires (e2f5526b9354a4f612f1d6d14ec078e3))
   (source_dir /home/simmo/dev/odep/_opam/lib/ocplib-endian)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocplib-endian))))
 (library
  ((name ocplib-endian.bigstring)
   (uid aafd0a3a6151b2232384e41fdc8276d7)
   (local false)
   (requires
    (805a2f924110b363da48e53aa58ca446
     6760ceddf5017d0210b5d3e2eed22191
     e2f5526b9354a4f612f1d6d14ec078e3))
   (source_dir /home/simmo/dev/odep/_opam/lib/ocplib-endian/bigstring)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocplib-endian/bigstring))))
 (library
  ((name react)
   (uid a1ddd16d653f58b7d989a95af129ee51)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/react)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/react))))
 (library
  ((name result)
   (uid ca6cc2b0189077cce731d5327e658aa4)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/result)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/result))))
 (library
  ((name threads)
   (uid eca627e6b6675dc07e9c77a66f206191)
   (local false)
   (requires (02d2f11fd3473d31b252ed283d8b16a7))
   (source_dir /home/simmo/dev/odep/_opam/lib/ocaml)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocaml))))
 (library
  ((name threads.posix)
   (uid 02d2f11fd3473d31b252ed283d8b16a7)
   (local false)
   (requires (7c82c98fd32b5f392f3ad8c940ef1e9e))
   (source_dir /home/simmo/dev/odep/_opam/lib/ocaml/threads)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocaml/threads))))
 (library
  ((name trie)
   (uid 769bfb0b12c5e2c267f45c71c360bc33)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/trie)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/trie))))
 (library
  ((name uchar)
   (uid dba142cc6af5828a7a8384e821e16f58)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/uchar)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/uchar))))
 (library
  ((name unix)
   (uid 7c82c98fd32b5f392f3ad8c940ef1e9e)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/ocaml)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/ocaml))))
 (library
  ((name utop)
   (uid eba52aea357a20d8febfb159c918d0ec)
   (local true)
   (requires
    (abcbdd0aea8d86fe67a684f8b8691323
     3c8753e4f7ad3c5eed8710e5f348ed8d
     1faecf7e9ee5db2ab95bd0bd05ff759b
     6f7186adbc64b83bab803daac023f331
     0ff0011e176aecf70f878ecc9b707ff2
     eca627e6b6675dc07e9c77a66f206191
     581d94a33adfac8da77784c5c9e9c448
     120abab954d15072406e17e01e57f300))
   (source_dir _build/default/src/lib)
   (modules
    (((name UTop_token)
      (impl (_build/default/src/lib/uTop_token.ml))
      (intf ())
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop_token.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name UTop_styles)
      (impl (_build/default/src/lib/uTop_styles.ml))
      (intf (_build/default/src/lib/uTop_styles.mli))
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop_styles.cmt))
      (cmti (_build/default/src/lib/.uTop.objs/byte/uTop_styles.cmti))
      (module_deps
       ((for_intf (UTop_token))
        (for_impl
         (UTop UTop_private UTop_token)))))
     ((name UTop_private)
      (impl (_build/default/src/lib/uTop_private.ml))
      (intf ())
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop_private.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name UTop_main)
      (impl (_build/default/src/lib/uTop_main.ml))
      (intf (_build/default/src/lib/uTop_main.mli))
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop_main.cmt))
      (cmti (_build/default/src/lib/.uTop.objs/byte/uTop_main.cmti))
      (module_deps
       ((for_intf ())
        (for_impl
         (UTop
          UTop_compat
          UTop_complete
          UTop_history
          UTop_lexer
          UTop_private
          UTop_styles
          UTop_token)))))
     ((name UTop_lexer)
      (impl (_build/default/src/lib/uTop_lexer.ml))
      (intf (_build/default/src/lib/uTop_lexer.mli))
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop_lexer.cmt))
      (cmti (_build/default/src/lib/.uTop.objs/byte/uTop_lexer.cmti))
      (module_deps
       ((for_intf (UTop_token))
        (for_impl (UTop_token)))))
     ((name UTop_history)
      (impl (_build/default/src/lib/uTop_history.ml))
      (intf (_build/default/src/lib/uTop_history.mli))
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop_history.cmt))
      (cmti (_build/default/src/lib/.uTop.objs/byte/uTop_history.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name UTop_complete)
      (impl (_build/default/src/lib/uTop_complete.ml))
      (intf (_build/default/src/lib/uTop_complete.mli))
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop_complete.cmt))
      (cmti (_build/default/src/lib/.uTop.objs/byte/uTop_complete.cmti))
      (module_deps
       ((for_intf ())
        (for_impl
         (UTop UTop_compat UTop_lexer UTop_token)))))
     ((name UTop_compat)
      (impl (_build/default/src/lib/uTop_compat.ml))
      (intf ())
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop_compat.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name UTop)
      (impl (_build/default/src/lib/uTop.ml))
      (intf (_build/default/src/lib/uTop.mli))
      (cmt (_build/default/src/lib/.uTop.objs/byte/uTop.cmt))
      (cmti (_build/default/src/lib/.uTop.objs/byte/uTop.cmti))
      (module_deps
       ((for_intf (UTop_history))
        (for_impl
         (UTop_compat UTop_history UTop_private)))))))
   (include_dirs (_build/default/src/lib/.uTop.objs/byte))))
 (library
  ((name uucp)
   (uid 97825b343525e449e5749dcaaab5793c)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/uucp)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/uucp))))
 (library
  ((name uuseg)
   (uid 76a1ed3afd0fd599b0a49239718fefe4)
   (local false)
   (requires (97825b343525e449e5749dcaaab5793c))
   (source_dir /home/simmo/dev/odep/_opam/lib/uuseg)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/uuseg))))
 (library
  ((name uutf)
   (uid f598837dd662583c9d6f841b8586310d)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/uutf)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/uutf))))
 (library
  ((name xdg)
   (uid 581d94a33adfac8da77784c5c9e9c448)
   (local false)
   (requires ())
   (source_dir /home/simmo/dev/odep/_opam/lib/xdg)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/xdg))))
 (library
  ((name zed)
   (uid 120abab954d15072406e17e01e57f300)
   (local false)
   (requires
    (a1ddd16d653f58b7d989a95af129ee51
     ca6cc2b0189077cce731d5327e658aa4
     dba142cc6af5828a7a8384e821e16f58
     f598837dd662583c9d6f841b8586310d
     97825b343525e449e5749dcaaab5793c
     76a1ed3afd0fd599b0a49239718fefe4))
   (source_dir /home/simmo/dev/odep/_opam/lib/zed)
   (modules ())
   (include_dirs (/home/simmo/dev/odep/_opam/lib/zed)))))
