((root .)
 (build_context _build/default)
 (executables
  ((names (bench_finger_tree_enum))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Bench_finger_tree_enum)
      (impl (_build/default/benchsuite/bench_finger_tree_enum.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bench_finger_tree_enum.eobjs/byte/dune__exe__Bench_finger_tree_enum.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs
    (_build/default/benchsuite/.bench_finger_tree_enum.eobjs/byte))))
 (executables
  ((names (bench_int))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Bench_int)
      (impl (_build/default/benchsuite/bench_int.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bench_int.eobjs/byte/dune__exe__Bench_int.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.bench_int.eobjs/byte))))
 (executables
  ((names (bench_kahan))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Bench_kahan)
      (impl (_build/default/benchsuite/bench_kahan.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bench_kahan.eobjs/byte/dune__exe__Bench_kahan.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.bench_kahan.eobjs/byte))))
 (executables
  ((names (bench_map))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Bench_map)
      (impl (_build/default/benchsuite/bench_map.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bench_map.eobjs/byte/dune__exe__Bench_map.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.bench_map.eobjs/byte))))
 (executables
  ((names (bench_nreplace))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Bench_nreplace)
      (impl (_build/default/benchsuite/bench_nreplace.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bench_nreplace.eobjs/byte/dune__exe__Bench_nreplace.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.bench_nreplace.eobjs/byte))))
 (executables
  ((names (bench_num))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Bench_num)
      (impl (_build/default/benchsuite/bench_num.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bench_num.eobjs/byte/dune__exe__Bench_num.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.bench_num.eobjs/byte))))
 (executables
  ((names (bench_set))
   (requires
    (85ca011ba029a83898f23f0df00c3181 9e2e4aa6487d21de8ac1d32c42ba60f7))
   (modules
    (((name Bench_set)
      (impl (_build/default/benchsuite/bench_set.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bench_set.eobjs/byte/dune__exe__Bench_set.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.bench_set.eobjs/byte))))
 (executables
  ((names (bench_set_to_seq))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Bench_set_to_seq)
      (impl (_build/default/benchsuite/bench_set_to_seq.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bench_set_to_seq.eobjs/byte/dune__exe__Bench_set_to_seq.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.bench_set_to_seq.eobjs/byte))))
 (executables
  ((names (bitset))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Bitset)
      (impl (_build/default/benchsuite/bitset.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.bitset.eobjs/byte/dune__exe__Bitset.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.bitset.eobjs/byte))))
 (executables
  ((names (deque))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Deque)
      (impl (_build/default/benchsuite/deque.ml))
      (intf ())
      (cmt (_build/default/benchsuite/.deque.eobjs/byte/dune__exe__Deque.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.deque.eobjs/byte))))
 (executables
  ((names (dynarray_iter))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Dynarray_iter)
      (impl (_build/default/benchsuite/dynarray_iter.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.dynarray_iter.eobjs/byte/dune__exe__Dynarray_iter.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.dynarray_iter.eobjs/byte))))
 (executables
  ((names (flip))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Flip)
      (impl (_build/default/benchsuite/flip.ml))
      (intf ())
      (cmt (_build/default/benchsuite/.flip.eobjs/byte/dune__exe__Flip.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.flip.eobjs/byte))))
 (executables
  ((names (fsum))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Fsum)
      (impl (_build/default/benchsuite/fsum.ml))
      (intf ())
      (cmt (_build/default/benchsuite/.fsum.eobjs/byte/dune__exe__Fsum.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.fsum.eobjs/byte))))
 (executables
  ((names (grouping))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Grouping)
      (impl (_build/default/benchsuite/grouping.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.grouping.eobjs/byte/dune__exe__Grouping.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.grouping.eobjs/byte))))
 (executables
  ((names (lazylist))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Lazylist)
      (impl (_build/default/benchsuite/lazylist.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.lazylist.eobjs/byte/dune__exe__Lazylist.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.lazylist.eobjs/byte))))
 (executables
  ((names (lines_of))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Lines_of)
      (impl (_build/default/benchsuite/lines_of.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.lines_of.eobjs/byte/dune__exe__Lines_of.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.lines_of.eobjs/byte))))
 (executables
  ((names (mid))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Mid)
      (impl (_build/default/benchsuite/mid.ml))
      (intf ())
      (cmt (_build/default/benchsuite/.mid.eobjs/byte/dune__exe__Mid.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.mid.eobjs/byte))))
 (executables
  ((names (popcount))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Popcount)
      (impl (_build/default/benchsuite/popcount.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.popcount.eobjs/byte/dune__exe__Popcount.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.popcount.eobjs/byte))))
 (executables
  ((names (rand_choice))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Rand_choice)
      (impl (_build/default/benchsuite/rand_choice.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.rand_choice.eobjs/byte/dune__exe__Rand_choice.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.rand_choice.eobjs/byte))))
 (executables
  ((names (sequence))
   (requires
    (85ca011ba029a83898f23f0df00c3181 46e6d2b4ed7f17561aa5a27f1496b976))
   (modules
    (((name Sequence)
      (impl (_build/default/benchsuite/sequence.ml))
      (intf ())
      (cmt
       (_build/default/benchsuite/.sequence.eobjs/byte/dune__exe__Sequence.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/.sequence.eobjs/byte))))
 (executables
  ((names (prefilter))
   (requires (1c675d5d7b2d5704154637ae86fb1094))
   (modules
    (((name Prefilter)
      (impl (_build/default/build/prefilter.ml))
      (intf ())
      (cmt
       (_build/default/build/.prefilter.eobjs/byte/dune__exe__Prefilter.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/build/.prefilter.eobjs/byte))))
 (executables
  ((names (mkconf))
   (requires (1c675d5d7b2d5704154637ae86fb1094))
   (modules
    (((name Mkconf)
      (impl (_build/default/build/mkconf.ml))
      (intf ())
      (cmt (_build/default/build/.mkconf.eobjs/byte/dune__exe__Mkconf.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/build/.mkconf.eobjs/byte))))
 (executables
  ((names
    (euler001
     euler008
     euler009
     euler010
     euler011
     euler012
     euler013
     euler014
     euler018
     euler019
     euler021
     euler022
     euler023
     euler024
     euler067))
   (requires (85ca011ba029a83898f23f0df00c3181))
   (modules
    (((name Mathlib)
      (impl (_build/default/examples/euler/mathlib.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Mathlib.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler067)
      (impl (_build/default/examples/euler/euler067.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler067.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler024)
      (impl (_build/default/examples/euler/euler024.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler024.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl (Mathlib)))))
     ((name Euler023)
      (impl (_build/default/examples/euler/euler023.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler023.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl (Mathlib)))))
     ((name Euler022)
      (impl (_build/default/examples/euler/euler022.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler022.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler021)
      (impl (_build/default/examples/euler/euler021.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler021.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl (Mathlib)))))
     ((name Euler019)
      (impl (_build/default/examples/euler/euler019.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler019.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler018)
      (impl (_build/default/examples/euler/euler018.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler018.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler014)
      (impl (_build/default/examples/euler/euler014.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler014.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler013)
      (impl (_build/default/examples/euler/euler013.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler013.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler012)
      (impl (_build/default/examples/euler/euler012.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler012.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler011)
      (impl (_build/default/examples/euler/euler011.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler011.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler010)
      (impl (_build/default/examples/euler/euler010.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler010.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler009)
      (impl (_build/default/examples/euler/euler009.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler009.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler008)
      (impl (_build/default/examples/euler/euler008.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler008.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Euler001)
      (impl (_build/default/examples/euler/euler001.ml))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe__Euler001.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Dune__exe)
      (impl (_build/default/examples/euler/.euler001.eobjs/dune__exe.ml-gen))
      (intf ())
      (cmt
       (_build/default/examples/euler/.euler001.eobjs/byte/dune__exe.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))))
   (include_dirs (_build/default/examples/euler/.euler001.eobjs/byte))))
 (executables
  ((names (main))
   (requires
    (85ca011ba029a83898f23f0df00c3181
     db69296479405ff7f16e4a1193c747b9
     eca627e6b6675dc07e9c77a66f206191))
   (modules
    (((name Test_vect)
      (impl (_build/default/testsuite/test_vect.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_vect.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_uref)
      (impl (_build/default/testsuite/test_uref.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_uref.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_unix)
      (impl (_build/default/testsuite/test_unix.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_unix.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_toplevel)
      (impl (_build/default/testsuite/test_toplevel.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_toplevel.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_substring)
      (impl (_build/default/testsuite/test_substring.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_substring.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_string)
      (impl (_build/default/testsuite/test_string.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_string.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_stack)
      (impl (_build/default/testsuite/test_stack.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_stack.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_set)
      (impl (_build/default/testsuite/test_set.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_set.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_random)
      (impl (_build/default/testsuite/test_random.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_random.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_print)
      (impl (_build/default/testsuite/test_print.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_print.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_pmap)
      (impl (_build/default/testsuite/test_pmap.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_pmap.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_pervasives)
      (impl (_build/default/testsuite/test_pervasives.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_pervasives.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_optparse)
      (impl (_build/default/testsuite/test_optparse.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_optparse.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_num)
      (impl (_build/default/testsuite/test_num.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_num.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_multipmap)
      (impl (_build/default/testsuite/test_multipmap.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_multipmap.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_modifiable)
      (impl (_build/default/testsuite/test_modifiable.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_modifiable.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_mappable)
      (impl (_build/default/testsuite/test_mappable.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_mappable.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_mapfunctors)
      (impl (_build/default/testsuite/test_mapfunctors.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_mapfunctors.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_map)
      (impl (_build/default/testsuite/test_map.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_map.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_hashtbl)
      (impl (_build/default/testsuite/test_hashtbl.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_hashtbl.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_hashcons)
      (impl (_build/default/testsuite/test_hashcons.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_hashcons.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_file)
      (impl (_build/default/testsuite/test_file.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_file.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_enum)
      (impl (_build/default/testsuite/test_enum.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_enum.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_dynarray)
      (impl (_build/default/testsuite/test_dynarray.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_dynarray.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_digest)
      (impl (_build/default/testsuite/test_digest.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_digest.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_container)
      (impl (_build/default/testsuite/test_container.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_container.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_bounded)
      (impl (_build/default/testsuite/test_bounded.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_bounded.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_bitset)
      (impl (_build/default/testsuite/test_bitset.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_bitset.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Test_base64)
      (impl (_build/default/testsuite/test_base64.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Test_base64.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Myocamlbuild)
      (impl (_build/default/testsuite/myocamlbuild.ml))
      (intf ())
      (cmt
       (_build/default/testsuite/.main.eobjs/byte/dune__exe__Myocamlbuild.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Main)
      (impl (_build/default/testsuite/main.ml))
      (intf ())
      (cmt (_build/default/testsuite/.main.eobjs/byte/dune__exe__Main.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (Test_bitset
          Test_bounded
          Test_container
          Test_digest
          Test_dynarray
          Test_enum
          Test_file
          Test_hashcons
          Test_hashtbl
          Test_map
          Test_mapfunctors
          Test_mappable
          Test_modifiable
          Test_multipmap
          Test_num
          Test_optparse
          Test_pervasives
          Test_random
          Test_set
          Test_stack
          Test_substring
          Test_uref)))))
     ((name Dune__exe)
      (impl (_build/default/testsuite/.main.eobjs/dune__exe.ml-gen))
      (intf ())
      (cmt (_build/default/testsuite/.main.eobjs/byte/dune__exe.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))))
   (include_dirs (_build/default/testsuite/.main.eobjs/byte))))
 (library
  ((name batteries.inner.threaded)
   (uid 0d06a79ed88aad31c99237923f89d417)
   (local true)
   (requires
    (85ca011ba029a83898f23f0df00c3181 eca627e6b6675dc07e9c77a66f206191))
   (source_dir _build/default/src)
   (modules
    (((name BatteriesThread)
      (impl (_build/default/src/batteriesThread.ml))
      (intf ())
      (cmt
       (_build/default/src/.batteriesThread.objs/byte/batteriesThread.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatMutex BatRMutex)))))
     ((name BatRMutex)
      (impl (_build/default/src/batRMutex.ml))
      (intf (_build/default/src/batRMutex.mli))
      (cmt (_build/default/src/.batteriesThread.objs/byte/batRMutex.cmt))
      (cmti (_build/default/src/.batteriesThread.objs/byte/batRMutex.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatMutex)
      (impl (_build/default/src/batMutex.ml))
      (intf (_build/default/src/batMutex.mli))
      (cmt (_build/default/src/.batteriesThread.objs/byte/batMutex.cmt))
      (cmti (_build/default/src/.batteriesThread.objs/byte/batMutex.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))))
   (include_dirs (_build/default/src/.batteriesThread.objs/byte))))
 (library
  ((name batteries.inner.toplevel)
   (uid a660a5f9ccaf28c4a3312b516a27fe1e)
   (local true)
   (requires
    (99439796e39ea0ab177c1e6311adc412
     eca627e6b6675dc07e9c77a66f206191
     1c675d5d7b2d5704154637ae86fb1094
     c39d8e11db2363236e69af7750ce7b9a
     85ca011ba029a83898f23f0df00c3181))
   (source_dir _build/default/toplevel)
   (modules
    (((name BatteriesHelp)
      (impl (_build/default/toplevel/batteriesHelp.ml))
      (intf (_build/default/toplevel/batteriesHelp.mli))
      (cmt
       (_build/default/toplevel/.batteriesToplevel.objs/byte/batteriesHelp.cmt))
      (cmti
       (_build/default/toplevel/.batteriesToplevel.objs/byte/batteriesHelp.cmti))
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/toplevel/.batteriesToplevel.objs/byte))))
 (library
  ((name batteries.inner.unthreaded)
   (uid 85ca011ba029a83898f23f0df00c3181)
   (local true)
   (requires
    (99439796e39ea0ab177c1e6311adc412
     82c934312d7063e92e65f9d2248a950d
     7c82c98fd32b5f392f3ad8c940ef1e9e
     1c675d5d7b2d5704154637ae86fb1094))
   (source_dir _build/default/src)
   (modules
    (((name Extlib)
      (impl (_build/default/src/extlib.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/extlib.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatArray
          BatBase64
          BatBitSet
          BatDllist
          BatDynArray
          BatEnum
          BatGlobal
          BatHashtbl
          BatIO
          BatList
          BatMap
          BatOptParse
          BatOption
          BatPervasives
          BatRefList
          BatString
          BatUChar
          BatUTF8)))))
     ((name Batteries_compattest)
      (impl (_build/default/src/batteries_compattest.ml))
      (intf ())
      (cmt
       (_build/default/src/.batteries.objs/byte/batteries_compattest.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatIO
          BatInnerIO
          BatInt
          BatMap
          BatSeq
          BatSet
          BatSplay
          BatString
          Batteries)))))
     ((name BatteriesPrint)
      (impl (_build/default/src/batteriesPrint.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batteriesPrint.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatChar
          BatDynArray
          BatEnum
          BatFloat
          BatIO
          BatInt
          BatInt32
          BatInt64
          BatMap
          BatNativeint
          BatSet
          BatString
          BatText
          BatUTF8)))))
     ((name BatteriesExceptionless)
      (impl (_build/default/src/batteriesExceptionless.ml))
      (intf ())
      (cmt
       (_build/default/src/.batteries.objs/byte/batteriesExceptionless.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatArray
          BatEnum
          BatHashtbl
          BatInterfaces
          BatLazyList
          BatList
          BatMap
          BatQueue
          BatSeq
          BatSplay
          BatStack
          BatString
          Batteries)))))
     ((name BatteriesConfig)
      (impl (_build/default/src/batteriesConfig.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batteriesConfig.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name Batteries)
      (impl (_build/default/src/batteries.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batteries.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatArray
          BatBase64
          BatBig_int
          BatBigarray
          BatBitSet
          BatBool
          BatBounded
          BatBuffer
          BatBytes
          BatCache
          BatChar
          BatCharParser
          BatComplex
          BatConcurrent
          BatDeque
          BatDigest
          BatDllist
          BatDynArray
          BatEither
          BatEnum
          BatFile
          BatFilename
          BatFingerTree
          BatFloat
          BatFormat
          BatGc
          BatGenlex
          BatGlobal
          BatHashcons
          BatHashtbl
          BatHeap
          BatIMap
          BatIO
          BatISet
          BatInt
          BatInt32
          BatInt64
          BatInterfaces
          BatLazyList
          BatLexing
          BatList
          BatLog
          BatLogger
          BatMap
          BatMarshal
          BatMultiMap
          BatMultiPMap
          BatNativeint
          BatNum
          BatNumber
          BatOption
          BatParserCo
          BatPathGen
          BatPervasives
          BatPrintexc
          BatPrintf
          BatQueue
          BatRandom
          BatRef
          BatRefList
          BatResult
          BatReturn
          BatScanf
          BatSeq
          BatSet
          BatSplay
          BatStack
          BatStream
          BatString
          BatSubstring
          BatSys
          BatText
          BatTuple
          BatUChar
          BatUTF8
          BatUnit
          BatUnix
          BatUref
          BatVect)))))
     ((name BatVect)
      (impl (_build/default/src/batVect.ml))
      (intf (_build/default/src/batVect.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batVect.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batVect.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatOrd))
        (for_impl
         (BatArray BatEnum BatInt BatOrd BatRef)))))
     ((name BatUref)
      (impl (_build/default/src/batUref.ml))
      (intf (_build/default/src/batUref.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batUref.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batUref.cmti))
      (module_deps
       ((for_intf (BatIO))
        (for_impl (BatInnerIO)))))
     ((name BatUnix)
      (impl (_build/default/src/batUnix.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batUnix.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatBytesCompat
          BatConcurrent
          BatInnerIO
          BatInnerPervasives
          BatInnerWeaktbl)))))
     ((name BatUnit)
      (impl (_build/default/src/batUnit.ml))
      (intf (_build/default/src/batUnit.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batUnit.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batUnit.cmti))
      (module_deps
       ((for_intf
         (BatInnerIO BatOrd))
        (for_impl
         (BatInnerIO BatOrd)))))
     ((name BatUTF8)
      (impl (_build/default/src/batUTF8.ml))
      (intf (_build/default/src/batUTF8.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batUTF8.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batUTF8.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatUChar))
        (for_impl
         (BatEnum BatUChar)))))
     ((name BatUChar)
      (impl (_build/default/src/batUChar.ml))
      (intf (_build/default/src/batUChar.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batUChar.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batUChar.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatTuple)
      (impl (_build/default/src/batTuple.ml))
      (intf (_build/default/src/batTuple.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batTuple.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batTuple.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatOrd))
        (for_impl
         (BatEnum BatIO BatList BatOrd)))))
     ((name BatText)
      (impl (_build/default/src/batText.ml))
      (intf (_build/default/src/batText.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batText.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batText.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatUChar))
        (for_impl
         (BatEnum BatIO BatPrintf BatReturn BatUChar BatUTF8)))))
     ((name BatSys)
      (impl (_build/default/src/batSys.ml))
      (intf (_build/default/src/batSys.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batSys.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batSys.cmti))
      (module_deps
       ((for_intf (BatEnum))
        (for_impl (BatArray)))))
     ((name BatSubstring)
      (impl (_build/default/src/batSubstring.ml))
      (intf (_build/default/src/batSubstring.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batSubstring.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batSubstring.cmti))
      (module_deps
       ((for_intf
         (BatBuffer BatEnum BatIO))
        (for_impl
         (BatBuffer
          BatBytesCompat
          BatChar
          BatEnum
          BatIO
          BatRef
          BatRefList
          BatString)))))
     ((name BatString)
      (impl (_build/default/src/batString.ml))
      (intf (_build/default/src/batString.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batString.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batString.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatInterfaces BatOrd))
        (for_impl
         (BatBytes BatBytesCompat BatChar BatEnum BatInnerIO BatOrd BatRef)))))
     ((name BatStream)
      (impl (_build/default/src/batStream.ml))
      (intf (_build/default/src/batStream.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batStream.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batStream.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatInterfaces))
        (for_impl
         (BatEnum BatIO)))))
     ((name BatStack)
      (impl (_build/default/src/batStack.ml))
      (intf (_build/default/src/batStack.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batStack.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batStack.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatOrd))
        (for_impl (BatEnum)))))
     ((name BatSplay)
      (impl (_build/default/src/batSplay.ml))
      (intf (_build/default/src/batSplay.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batSplay.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batSplay.cmti))
      (module_deps
       ((for_intf
         (BatInnerIO BatInterfaces BatMap))
        (for_impl
         (BatEnum BatInterfaces BatList BatPrintf BatSeq)))))
     ((name BatSet)
      (impl (_build/default/src/batSet.ml))
      (intf (_build/default/src/batSet.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batSet.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batSet.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatInterfaces BatSeq))
        (for_impl
         (BatChar
          BatEnum
          BatFloat
          BatInnerIO
          BatInt
          BatInt32
          BatInt64
          BatInterfaces
          BatNativeint
          BatPrintf
          BatSeq
          BatString)))))
     ((name BatSeq)
      (impl (_build/default/src/batSeq.ml))
      (intf (_build/default/src/batSeq.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batSeq.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batSeq.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatInterfaces))
        (for_impl
         (BatEnum BatInnerIO BatPrintf BatString)))))
     ((name BatScanf)
      (impl (_build/default/src/batScanf.ml))
      (intf (_build/default/src/batScanf.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batScanf.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batScanf.cmti))
      (module_deps
       ((for_intf (BatIO))
        (for_impl (BatInnerIO)))))
     ((name BatReturn)
      (impl (_build/default/src/batReturn.ml))
      (intf (_build/default/src/batReturn.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batReturn.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batReturn.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatResult)
      (impl (_build/default/src/batResult.ml))
      (intf (_build/default/src/batResult.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batResult.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batResult.cmti))
      (module_deps
       ((for_intf
         (BatInnerIO BatPervasives BatSeq))
        (for_impl
         (BatPervasives BatPrintexc BatPrintf BatSeq)))))
     ((name BatRefList)
      (impl (_build/default/src/batRefList.ml))
      (intf (_build/default/src/batRefList.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batRefList.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batRefList.cmti))
      (module_deps
       ((for_intf (BatEnum))
        (for_impl (BatList)))))
     ((name BatRef)
      (impl (_build/default/src/batRef.ml))
      (intf (_build/default/src/batRef.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batRef.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batRef.cmti))
      (module_deps
       ((for_intf
         (BatInnerIO BatOrd))
        (for_impl ()))))
     ((name BatRandom)
      (impl (_build/default/src/batRandom.ml))
      (intf (_build/default/src/batRandom.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batRandom.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batRandom.cmti))
      (module_deps
       ((for_intf (BatEnum))
        (for_impl
         (BatArray BatEnum BatInnerShuffle BatOption)))))
     ((name BatQueue)
      (impl (_build/default/src/batQueue.ml))
      (intf (_build/default/src/batQueue.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batQueue.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batQueue.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatOrd))
        (for_impl
         (BatConcreteQueue BatEnum)))))
     ((name BatPrintf)
      (impl (_build/default/src/batPrintf.ml))
      (intf (_build/default/src/batPrintf.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batPrintf.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batPrintf.cmti))
      (module_deps
       ((for_intf (BatInnerIO))
        (for_impl
         (BatBuffer BatInnerIO)))))
     ((name BatPrintexc)
      (impl (_build/default/src/batPrintexc.ml))
      (intf (_build/default/src/batPrintexc.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batPrintexc.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batPrintexc.cmti))
      (module_deps
       ((for_intf (BatInnerIO))
        (for_impl (BatInnerIO)))))
     ((name BatPervasives)
      (impl (_build/default/src/batPervasives.ml))
      (intf (_build/default/src/batPervasives.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batPervasives.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batPervasives.cmti))
      (module_deps
       ((for_intf
         (BatConcurrent BatEnum BatFile BatIO BatInnerIO BatInnerPervasives))
        (for_impl
         (BatArray
          BatChar
          BatEnum
          BatFile
          BatFloat
          BatIO
          BatInnerPervasives
          BatInt64
          BatList
          BatMarshal
          BatString)))))
     ((name BatPathGen)
      (impl (_build/default/src/batPathGen.ml))
      (intf (_build/default/src/batPathGen.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batPathGen.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batPathGen.cmti))
      (module_deps
       ((for_intf
         (BatCharParser BatParserCo))
        (for_impl
         (BatCharParser BatParserCo BatPervasives BatString)))))
     ((name BatParserCo)
      (impl (_build/default/src/batParserCo.ml))
      (intf (_build/default/src/batParserCo.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batParserCo.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batParserCo.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatPervasives))
        (for_impl
         (BatIO BatInnerPervasives BatLazyList BatList BatPrintf BatString)))))
     ((name BatOrd)
      (impl (_build/default/src/batOrd.ml))
      (intf (_build/default/src/batOrd.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batOrd.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batOrd.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatOption)
      (impl (_build/default/src/batOption.ml))
      (intf (_build/default/src/batOption.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batOption.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batOption.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatOrd))
        (for_impl
         (BatEnum BatInnerIO BatOrd BatPrintf)))))
     ((name BatOptParse)
      (impl (_build/default/src/batOptParse.ml))
      (intf (_build/default/src/batOptParse.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batOptParse.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batOptParse.cmti))
      (module_deps
       ((for_intf ())
        (for_impl
         (BatList BatOption BatRefList BatString)))))
     ((name BatOpaqueInnerSys)
      (impl (_build/default/src/batOpaqueInnerSys.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batOpaqueInnerSys.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatNumber)
      (impl (_build/default/src/batNumber.ml))
      (intf (_build/default/src/batNumber.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batNumber.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batNumber.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatOrd))
        (for_impl
         (BatEnum BatOrd)))))
     ((name BatNum)
      (impl (_build/default/src/batNum.ml))
      (intf (_build/default/src/batNum.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batNum.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batNum.cmti))
      (module_deps
       ((for_intf
         (BatInnerIO BatNumber BatOrd))
        (for_impl
         (BatInnerIO BatNumber BatOrd BatString)))))
     ((name BatNativeint)
      (impl (_build/default/src/batNativeint.ml))
      (intf (_build/default/src/batNativeint.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batNativeint.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batNativeint.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatNumber BatOrd))
        (for_impl
         (BatNumber BatPrintf)))))
     ((name BatMultiPMap)
      (impl (_build/default/src/batMultiPMap.ml))
      (intf (_build/default/src/batMultiPMap.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batMultiPMap.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batMultiPMap.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatSet))
        (for_impl
         (BatEnum BatMap BatPrintf BatSet)))))
     ((name BatMultiMap)
      (impl (_build/default/src/batMultiMap.ml))
      (intf (_build/default/src/batMultiMap.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batMultiMap.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batMultiMap.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatSet))
        (for_impl
         (BatEnum BatMap BatPrintf BatSet)))))
     ((name BatMarshal)
      (impl (_build/default/src/batMarshal.ml))
      (intf (_build/default/src/batMarshal.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batMarshal.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batMarshal.cmti))
      (module_deps
       ((for_intf (BatInnerIO))
        (for_impl (BatInnerIO)))))
     ((name BatMap)
      (impl (_build/default/src/batMap.ml))
      (intf (_build/default/src/batMap.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batMap.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batMap.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatInterfaces BatSeq))
        (for_impl
         (BatChar
          BatEnum
          BatFloat
          BatInnerIO
          BatInt
          BatInt32
          BatInt64
          BatInterfaces
          BatNativeint
          BatOrd
          BatPrintf
          BatSeq
          BatString)))))
     ((name BatLogger)
      (impl (_build/default/src/batLogger.ml))
      (intf (_build/default/src/batLogger.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batLogger.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batLogger.cmti))
      (module_deps
       ((for_intf (BatIO))
        (for_impl
         (BatIO BatPrintf BatSubstring)))))
     ((name BatLog)
      (impl (_build/default/src/batLog.ml))
      (intf (_build/default/src/batLog.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batLog.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batLog.cmti))
      (module_deps
       ((for_intf (BatIO))
        (for_impl
         (BatInnerIO BatInt BatList BatOption BatPrintf)))))
     ((name BatList)
      (impl (_build/default/src/batList.ml))
      (intf (_build/default/src/batList.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batList.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batList.cmti))
      (module_deps
       ((for_intf
         (BatEither BatEnum BatInnerIO BatInterfaces BatOrd))
        (for_impl
         (BatEither BatEnum BatInnerIO BatInnerShuffle BatOrd BatSet)))))
     ((name BatLexing)
      (impl (_build/default/src/batLexing.ml))
      (intf (_build/default/src/batLexing.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batLexing.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batLexing.cmti))
      (module_deps
       ((for_intf (BatIO))
        (for_impl (BatIO)))))
     ((name BatLazyList)
      (impl (_build/default/src/batLazyList.ml))
      (intf (_build/default/src/batLazyList.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batLazyList.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batLazyList.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatInterfaces))
        (for_impl
         (BatEnum BatMap BatOption)))))
     ((name BatInterfaces)
      (impl (_build/default/src/batInterfaces.ml))
      (intf (_build/default/src/batInterfaces.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batInterfaces.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batInterfaces.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatInt64)
      (impl (_build/default/src/batInt64.ml))
      (intf (_build/default/src/batInt64.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batInt64.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batInt64.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatNumber BatOrd))
        (for_impl
         (BatInnerIO BatNumber BatPrintf)))))
     ((name BatInt32)
      (impl (_build/default/src/batInt32.ml))
      (intf (_build/default/src/batInt32.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batInt32.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batInt32.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatNumber BatOrd))
        (for_impl
         (BatInnerIO BatNumber BatPrintf)))))
     ((name BatInt)
      (impl (_build/default/src/batInt.ml))
      (intf (_build/default/src/batInt.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batInt.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batInt.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatNumber BatOrd))
        (for_impl
         (BatEnum BatInnerIO BatNumber BatPrintf BatRef)))))
     ((name BatInnerWeaktbl)
      (impl (_build/default/src/batInnerWeaktbl.ml))
      (intf (_build/default/src/batInnerWeaktbl.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batInnerWeaktbl.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batInnerWeaktbl.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatInnerShuffle)
      (impl (_build/default/src/batInnerShuffle.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batInnerShuffle.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatInnerPervasives)
      (impl (_build/default/src/batInnerPervasives.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batInnerPervasives.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatConcurrent BatOption BatRef)))))
     ((name BatInnerIO)
      (impl (_build/default/src/batInnerIO.ml))
      (intf (_build/default/src/batInnerIO.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batInnerIO.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batInnerIO.cmti))
      (module_deps
       ((for_intf (BatConcurrent))
        (for_impl
         (BatBytesCompat BatConcurrent BatInnerWeaktbl)))))
     ((name BatISet)
      (impl (_build/default/src/batISet.ml))
      (intf (_build/default/src/batISet.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batISet.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batISet.cmti))
      (module_deps
       ((for_intf
         (BatAvlTree BatEnum BatIO BatOrd))
        (for_impl
         (BatAvlTree BatEnum BatInt BatOrd BatTuple)))))
     ((name BatIO)
      (impl (_build/default/src/batIO.ml))
      (intf (_build/default/src/batIO.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batIO.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batIO.cmti))
      (module_deps
       ((for_intf
         (BatConcurrent BatEnum BatInnerIO))
        (for_impl
         (BatBytesCompat BatConcurrent BatEnum BatInnerIO BatPrintf BatUnix)))))
     ((name BatIMap)
      (impl (_build/default/src/batIMap.ml))
      (intf (_build/default/src/batIMap.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batIMap.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batIMap.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatISet))
        (for_impl
         (BatAvlTree BatEnum)))))
     ((name BatHeap)
      (impl (_build/default/src/batHeap.ml))
      (intf (_build/default/src/batHeap.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batHeap.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batHeap.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatInterfaces))
        (for_impl
         (BatEnum BatInnerIO BatInterfaces)))))
     ((name BatHashtbl)
      (impl (_build/default/src/batHashtbl.ml))
      (intf (_build/default/src/batHashtbl.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batHashtbl.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batHashtbl.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatPervasives))
        (for_impl
         (BatArray BatEnum BatInnerIO BatOption BatPervasives BatPrintf)))))
     ((name BatHashcons)
      (impl (_build/default/src/batHashcons.ml))
      (intf (_build/default/src/batHashcons.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batHashcons.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batHashcons.cmti))
      (module_deps
       ((for_intf (BatHashtbl))
        (for_impl
         (BatArray BatHashtbl BatInt BatSys)))))
     ((name BatGlobal)
      (impl (_build/default/src/batGlobal.ml))
      (intf (_build/default/src/batGlobal.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batGlobal.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batGlobal.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatGenlex)
      (impl (_build/default/src/batGenlex.ml))
      (intf (_build/default/src/batGenlex.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batGenlex.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batGenlex.cmti))
      (module_deps
       ((for_intf
         (BatCharParser BatEnum BatLazyList BatParserCo))
        (for_impl
         (BatChar
          BatCharParser
          BatEnum
          BatFloat
          BatInnerPervasives
          BatInt
          BatLazyList
          BatOption
          BatParserCo
          BatStream
          BatString)))))
     ((name BatGc)
      (impl (_build/default/src/batGc.ml))
      (intf (_build/default/src/batGc.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batGc.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batGc.cmti))
      (module_deps
       ((for_intf (BatInnerIO))
        (for_impl (BatPrintf)))))
     ((name BatFormat)
      (impl (_build/default/src/batFormat.ml))
      (intf (_build/default/src/batFormat.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batFormat.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batFormat.cmti))
      (module_deps
       ((for_intf (BatIO))
        (for_impl
         (BatIO BatInnerIO)))))
     ((name BatFloat)
      (impl (_build/default/src/batFloat.ml))
      (intf (_build/default/src/batFloat.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batFloat.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batFloat.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatInnerIO BatNumber BatOrd))
        (for_impl
         (BatInnerIO BatNumber BatPrintf)))))
     ((name BatFingerTree)
      (impl (_build/default/src/batFingerTree.ml))
      (intf (_build/default/src/batFingerTree.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batFingerTree.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batFingerTree.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO))
        (for_impl
         (BatEnum BatInnerIO BatInt BatList)))))
     ((name BatFilename)
      (impl (_build/default/src/batFilename.ml))
      (intf (_build/default/src/batFilename.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batFilename.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batFilename.cmti))
      (module_deps
       ((for_intf ())
        (for_impl (BatPervasives)))))
     ((name BatFile)
      (impl (_build/default/src/batFile.ml))
      (intf (_build/default/src/batFile.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batFile.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batFile.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO))
        (for_impl
         (BatBigarray BatEnum BatIO BatInnerPervasives BatRef)))))
     ((name BatEnum)
      (impl (_build/default/src/batEnum.ml))
      (intf (_build/default/src/batEnum.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batEnum.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batEnum.cmti))
      (module_deps
       ((for_intf
         (BatInnerIO BatInterfaces BatOrd))
        (for_impl
         (BatInnerIO BatInterfaces BatOrd BatRef)))))
     ((name BatEither)
      (impl (_build/default/src/batEither.ml))
      (intf (_build/default/src/batEither.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batEither.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batEither.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatDynArray)
      (impl (_build/default/src/batDynArray.ml))
      (intf (_build/default/src/batDynArray.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batDynArray.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batDynArray.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatInterfaces))
        (for_impl
         (BatBitSet BatEnum BatInt)))))
     ((name BatDllist)
      (impl (_build/default/src/batDllist.ml))
      (intf (_build/default/src/batDllist.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batDllist.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batDllist.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatInterfaces))
        (for_impl (BatEnum)))))
     ((name BatDigest)
      (impl (_build/default/src/batDigest.ml))
      (intf (_build/default/src/batDigest.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batDigest.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batDigest.cmti))
      (module_deps
       ((for_intf (BatIO))
        (for_impl
         (BatBytesCompat BatIO)))))
     ((name BatDeque)
      (impl (_build/default/src/batDeque.ml))
      (intf (_build/default/src/batDeque.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batDeque.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batDeque.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatInterfaces))
        (for_impl
         (BatEnum BatInnerIO BatList)))))
     ((name BatConcurrent)
      (impl (_build/default/src/batConcurrent.ml))
      (intf (_build/default/src/batConcurrent.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batConcurrent.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batConcurrent.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatConcreteQueue_403)
      (impl (_build/default/src/batConcreteQueue_403.ml))
      (intf (_build/default/src/batConcreteQueue_403.mli))
      (cmt
       (_build/default/src/.batteries.objs/byte/batConcreteQueue_403.cmt))
      (cmti
       (_build/default/src/.batteries.objs/byte/batConcreteQueue_403.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatConcreteQueue_402)
      (impl (_build/default/src/batConcreteQueue_402.ml))
      (intf (_build/default/src/batConcreteQueue_402.mli))
      (cmt
       (_build/default/src/.batteries.objs/byte/batConcreteQueue_402.cmt))
      (cmti
       (_build/default/src/.batteries.objs/byte/batConcreteQueue_402.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatConcreteQueue)
      (impl (_build/default/src/batConcreteQueue.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batConcreteQueue.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatComplex)
      (impl (_build/default/src/batComplex.ml))
      (intf (_build/default/src/batComplex.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batComplex.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batComplex.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatNumber BatOrd))
        (for_impl
         (BatEnum BatGenlex BatInnerIO BatNumber BatOrd BatString)))))
     ((name BatCharParser)
      (impl (_build/default/src/batCharParser.ml))
      (intf (_build/default/src/batCharParser.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batCharParser.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batCharParser.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatParserCo BatPervasives))
        (for_impl
         (BatChar BatParserCo BatString BatVect)))))
     ((name BatChar)
      (impl (_build/default/src/batChar.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batChar.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl
         (BatEnum BatInnerIO BatOrd)))))
     ((name BatCache)
      (impl (_build/default/src/batCache.ml))
      (intf (_build/default/src/batCache.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batCache.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batCache.cmti))
      (module_deps
       ((for_intf (BatEnum))
        (for_impl
         (BatDllist BatEnum BatHashtbl BatInnerPervasives BatMap)))))
     ((name BatBytesCompat)
      (impl (_build/default/src/batBytesCompat.ml))
      (intf ())
      (cmt (_build/default/src/.batteries.objs/byte/batBytesCompat.cmt))
      (cmti ())
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatBytes)
      (impl (_build/default/src/batBytes.ml))
      (intf (_build/default/src/batBytes.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batBytes.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batBytes.cmti))
      (module_deps
       ((for_intf ())
        (for_impl ()))))
     ((name BatBuffer)
      (impl (_build/default/src/batBuffer.ml))
      (intf (_build/default/src/batBuffer.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batBuffer.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batBuffer.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO))
        (for_impl
         (BatEnum BatInnerIO BatString)))))
     ((name BatBounded)
      (impl (_build/default/src/batBounded.ml))
      (intf (_build/default/src/batBounded.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batBounded.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batBounded.cmti))
      (module_deps
       ((for_intf
         (BatNumber BatOrd))
        (for_impl
         (BatNumber BatOption BatOrd)))))
     ((name BatBool)
      (impl (_build/default/src/batBool.ml))
      (intf (_build/default/src/batBool.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batBool.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batBool.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatNumber BatOrd))
        (for_impl
         (BatInnerIO BatNumber)))))
     ((name BatBitSet)
      (impl (_build/default/src/batBitSet.ml))
      (intf (_build/default/src/batBitSet.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batBitSet.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batBitSet.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatInnerIO BatOrd))
        (for_impl
         (BatEnum BatInnerIO BatOrd)))))
     ((name BatBigarray)
      (impl (_build/default/src/batBigarray.ml))
      (intf (_build/default/src/batBigarray.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batBigarray.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batBigarray.cmti))
      (module_deps
       ((for_intf
         (BatArray BatEnum))
        (for_impl
         (BatArray BatEnum)))))
     ((name BatBig_int)
      (impl (_build/default/src/batBig_int.ml))
      (intf (_build/default/src/batBig_int.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batBig_int.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batBig_int.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatNumber BatOrd))
        (for_impl
         (BatBytesCompat BatIO BatNumber)))))
     ((name BatBase64)
      (impl (_build/default/src/batBase64.ml))
      (intf (_build/default/src/batBase64.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batBase64.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batBase64.cmti))
      (module_deps
       ((for_intf (BatIO))
        (for_impl (BatIO)))))
     ((name BatAvlTree)
      (impl (_build/default/src/batAvlTree.ml))
      (intf (_build/default/src/batAvlTree.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batAvlTree.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batAvlTree.cmti))
      (module_deps
       ((for_intf (BatEnum))
        (for_impl
         (BatEnum BatInt BatList BatOption)))))
     ((name BatArray)
      (impl (_build/default/src/batArray.ml))
      (intf (_build/default/src/batArray.mli))
      (cmt (_build/default/src/.batteries.objs/byte/batArray.cmt))
      (cmti (_build/default/src/.batteries.objs/byte/batArray.cmti))
      (module_deps
       ((for_intf
         (BatEnum BatIO BatInterfaces BatOrd))
        (for_impl
         (BatBitSet
          BatEnum
          BatInnerIO
          BatInnerShuffle
          BatInt
          BatList
          BatOrd
          BatRef)))))))
   (include_dirs (_build/default/src/.batteries.objs/byte))))
 (library
  ((name bench)
   (uid 46e6d2b4ed7f17561aa5a27f1496b976)
   (local true)
   (requires (7c82c98fd32b5f392f3ad8c940ef1e9e))
   (source_dir _build/default/benchsuite/lib)
   (modules
    (((name Bench)
      (impl (_build/default/benchsuite/lib/bench.ml))
      (intf ())
      (cmt (_build/default/benchsuite/lib/.bench.objs/byte/bench.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/benchsuite/lib/.bench.objs/byte))))
 (library
  ((name benchmark)
   (uid 9e2e4aa6487d21de8ac1d32c42ba60f7)
   (local false)
   (requires (7c82c98fd32b5f392f3ad8c940ef1e9e))
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/benchmark)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/benchmark))))
 (library
  ((name bytes)
   (uid e2f5526b9354a4f612f1d6d14ec078e3)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/bytes)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/bytes))))
 (library
  ((name camlp-streams)
   (uid 82c934312d7063e92e65f9d2248a950d)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/camlp-streams)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/camlp-streams))))
 (library
  ((name compiler-libs)
   (uid c39d8e11db2363236e69af7750ce7b9a)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/ocaml/compiler-libs)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/ocaml/compiler-libs))))
 (library
  ((name num)
   (uid 99439796e39ea0ab177c1e6311adc412)
   (local false)
   (requires (ff14d00a14e9bca264298f4389068199))
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/num)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/num))))
 (library
  ((name num.core)
   (uid ff14d00a14e9bca264298f4389068199)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/ocaml)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/ocaml))))
 (library
  ((name oUnit)
   (uid db69296479405ff7f16e4a1193c747b9)
   (local false)
   (requires (815d348c4445cb34b81e5a28dcaea5b5))
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/oUnit)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/oUnit))))
 (library
  ((name ounit2)
   (uid 815d348c4445cb34b81e5a28dcaea5b5)
   (local false)
   (requires
    (7c82c98fd32b5f392f3ad8c940ef1e9e
     092c274fe179bf76244efc6236abbb42
     9dc55eb96b691a006c9a1055e02244f8))
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/ounit2)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/ounit2))))
 (library
  ((name ounit2.advanced)
   (uid 9dc55eb96b691a006c9a1055e02244f8)
   (local false)
   (requires
    (7c82c98fd32b5f392f3ad8c940ef1e9e
     e2f5526b9354a4f612f1d6d14ec078e3
     092c274fe179bf76244efc6236abbb42
     249b2edaf3cc552a247667041bb5f015))
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/ounit2/advanced)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/ounit2/advanced))))
 (library
  ((name qtest_batteries)
   (uid 7b7dd4e920d75e51fb67b96c9a215e7b)
   (local true)
   (requires ())
   (source_dir _build/default/src)
   (modules
    (((name Qtest_batteries)
      (impl (_build/default/src/qtest_batteries.ml-gen))
      (intf ())
      (cmt
       (_build/default/src/.qtest_batteries.objs/byte/qtest_batteries.cmt))
      (cmti ())
      (module_deps ((for_intf ()) (for_impl ()))))))
   (include_dirs (_build/default/src/.qtest_batteries.objs/byte))))
 (library
  ((name seq)
   (uid 092c274fe179bf76244efc6236abbb42)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/seq)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/seq))))
 (library
  ((name stdlib-shims)
   (uid 249b2edaf3cc552a247667041bb5f015)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/stdlib-shims)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/stdlib-shims))))
 (library
  ((name str)
   (uid 1c675d5d7b2d5704154637ae86fb1094)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/ocaml/str)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/ocaml/str))))
 (library
  ((name threads)
   (uid eca627e6b6675dc07e9c77a66f206191)
   (local false)
   (requires (7c82c98fd32b5f392f3ad8c940ef1e9e))
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/ocaml/threads)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/ocaml/threads))))
 (library
  ((name unix)
   (uid 7c82c98fd32b5f392f3ad8c940ef1e9e)
   (local false)
   (requires ())
   (source_dir /home/simmo/.opam/5.0.0+trunk/lib/ocaml/unix)
   (modules ())
   (include_dirs (/home/simmo/.opam/5.0.0+trunk/lib/ocaml/unix)))))
