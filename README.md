# ocaml-depgraph

Dependency graphs for OCaml modules, libraries and packages.

## Examples

### This package

#### dot

![Dependency graph for ocaml-depgraph](img/ocaml-depgraph.svg)

#### Mermaid

```mermaid
flowchart TD
  subgraph 1034807265 ["ppx_sexp_conv"]
    id898385846(["ppx_sexp_conv.runtime-lib"])
    style id898385846 fill:#BBB
  end
  subgraph 112751164 ["sexplib0"]
    id432185171(["sexplib0"])
    style id432185171 fill:#BBB
  end
  subgraph 134267935 ["result"]
    id128727188(["result"])
    style id128727188 fill:#BBB
  end
  subgraph 19025522 ["opam-state"]
    id900028686(["opam-state"])
    style id900028686 fill:#BBB
  end
  subgraph 284650407 ["cmdliner"]
    id220536066(["cmdliner"])
    style id220536066 fill:#BBB
  end
  subgraph 311326139 ["parsexp"]
    id736461738(["parsexp"])
    style id736461738 fill:#BBB
  end
  subgraph 339874473 ["rresult"]
    id151764012(["rresult"])
    style id151764012 fill:#BBB
  end
  subgraph 367495476 ["opam-core"]
    id452126937(["opam-core"])
    style id452126937 fill:#BBB
  end
  subgraph 404884661 ["ocamlgraph"]
    id341874457(["ocamlgraph"])
    style id341874457 fill:#BBB
  end
  subgraph 527026861 ["(compiler)"]
    id14117246(["unix"])
    style id14117246 fill:#BBB
    id794778010(["bigarray"])
    style id794778010 fill:#BBB
  end
  subgraph 532407225 ["logs"]
    id523201603(["logs"])
    style id523201603 fill:#BBB
  end
  subgraph 569010170 ["ppx_deriving"]
    id1017920234(["ppx_deriving.runtime"])
    style id1017920234 fill:#BBB
  end
  subgraph 586469389 ["seq"]
    id453728833(["seq"])
    style id453728833 fill:#BBB
  end
  subgraph 604328246 ["fpath"]
    id542865008(["fpath"])
    style id542865008 fill:#BBB
  end
  subgraph 63636880 ["base"]
    id1065472475(["base.caml"])
    style id1065472475 fill:#BBB
  end
  subgraph 69806535 ["re"]
    id771539550(["re"])
    style id771539550 fill:#BBB
  end
  subgraph 763794292 ["opam-file-format"]
    id541881894(["opam-file-format"])
    style id541881894 fill:#BBB
  end
  subgraph 771805234 ["opam-format"]
    id581665636(["opam-format"])
    style id581665636 fill:#BBB
  end
  subgraph 781095796 ["astring"]
    id210412474(["astring"])
    style id210412474 fill:#BBB
  end
  subgraph 785389636 ["bos"]
    id137284731(["bos"])
    style id137284731 fill:#BBB
  end
  subgraph 862767176 ["opam-repository"]
    id137499985(["opam-repository"])
    style id137499985 fill:#BBB
  end
  subgraph 869606110 ["stdlib-shims"]
    id1071647338(["stdlib-shims"])
    style id1071647338 fill:#BBB
  end
  subgraph 911361604 ["fmt"]
    id306969661(["fmt"])
    style id306969661 fill:#BBB
  end
  subgraph 930138589 ["sexplib"]
    id412686054(["sexplib"])
    style id412686054 fill:#BBB
  end
  subgraph local_package__ ["(local)"]

    subgraph 132987195 ["depgraph"]
      id997433607("Result_syntax")
      id471345431("Opam_index")
      id263752178("Dune_describe")
      id1059189446("Depgraph")
      id132987195{"depgraph"}
    end
    subgraph 651970772 ["ocamlgraph_extra"]
      id851014429("Ocamlgraph_extra")
      id712188712("Mermaid")
      id129962454("Graphviz")
      id651970772(["ocamlgraph_extra"])
    end
  end
  132987195-->id137284731
  132987195-->id220536066
  132987195-->651970772
  132987195-->id900028686
  132987195-->id1017920234
  132987195-->id898385846
  132987195-->id412686054
  id132987195-->id1059189446
  id794778010-->id14117246
  id137284731-->id306969661
  id137284731-->id542865008
  id137284731-->id523201603
  id137284731-->id151764012
  id137284731-->id14117246
  id542865008-->id210412474
  id341874457-->id1071647338
  651970772-->id341874457
  id651970772-->id851014429
  id452126937-->id794778010
  id452126937-->id341874457
  id452126937-->id771539550
  id581665636-->id452126937
  id581665636-->id541881894
  id137499985-->id581665636
  id900028686-->id137499985
  id736461738-->id1065472475
  id736461738-->id432185171
  id1017920234-->id128727188
  id898385846-->id432185171
  id771539550-->id453728833
  id412686054-->id794778010
  id412686054-->id736461738
  id1059189446-->id263752178
  id1059189446-->id471345431
  id1059189446-->id997433607
  id712188712-->id129962454
  id851014429-->id712188712
```

## Other tools

* [dune-deps](https://github.com/mjambon/dune-deps) — dune only, custom dune files parsing.
* [opam-dot](https://github.com/Drup/opam-dot) — opam only, outdated ([fork](https://github.com/sim642/opam-dot)).
* [depgraph](https://github.com/rgrinberg/ocaml-depgraph) — modules only (via `ocamldep`), inactive.
* [odoc-depgraph](https://github.com/zoggy/odoc_depgraph) — modules only (in `ocamldoc`), inactive.
* [`ocamldoc -dot`](https://v2.ocaml.org/manual/ocamldoc.html) — modules only (in `ocamldoc`).
* [codept](https://github.com/Octachron/codept) — `ocamldep` alternative, has `dot` output, no dune integration.
* [opam-dune-lint](https://github.com/ocurrent/opam-dune-lint) — package-library mapping, no graphing.
