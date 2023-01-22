# odep

[![ci workflow status](https://github.com/sim642/odep/actions/workflows/ci.yml/badge.svg)](https://github.com/sim642/odep/actions/workflows/ci.yml)

Dependency graphs for OCaml modules, libraries and packages.

## Examples

### dune
Dependency graphs for dune project modules and libraries, examples here for this repository.
Includes clusters for libraries and opam packages.

#### xdot
```console
odep dune | xdot -
```
opens `xdot` for interactive dot graph viewing.

#### dot
```console
odep dune | dot -Tsvg > img/odep.svg
```
produces:
[![Dune dependency graph for odep](img/dune-odep.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/dune-odep.svg)

#### Mermaid
```console
odep dune -t mermaid
```
copied into a `mermaid` language block in GitHub Flavored Markdown produces:
```mermaid
flowchart TD
  subgraph 102489341 ["parsexp"]
    id705946596(["parsexp"])
    style id705946596 fill:#BBB
  end
  subgraph 1029800924 ["opam-file-format"]
    id430993069(["opam-file-format"])
    style id430993069 fill:#BBB
  end
  subgraph 129913994 ["(compiler)"]
    id266426620(["unix"])
    style id266426620 fill:#BBB
    id255847688(["compiler-libs.common"])
    style id255847688 fill:#BBB
    id612096776(["bigarray"])
    style id612096776 fill:#BBB
  end
  subgraph 154672022 ["astring"]
    id96640315(["astring"])
    style id96640315 fill:#BBB
  end
  subgraph 195080345 ["base"]
    id498790760(["base.shadow_stdlib"])
    style id498790760 fill:#BBB
    id301824178(["base.caml"])
    style id301824178 fill:#BBB
    id346353879(["base.base_internalhash_types"])
    style id346353879 fill:#BBB
    id820557841(["base"])
    style id820557841 fill:#BBB
  end
  subgraph 198614204 ["fpath"]
    id365328357(["fpath"])
    style id365328357 fill:#BBB
  end
  subgraph 225091939 ["stdlib-shims"]
    id638246448(["stdlib-shims"])
    style id638246448 fill:#BBB
  end
  subgraph 284891543 ["result"]
    id65125095(["result"])
    style id65125095 fill:#BBB
  end
  subgraph 305955603 ["opam-repository"]
    id523500181(["opam-repository"])
    style id523500181 fill:#BBB
  end
  subgraph 344936565 ["rresult"]
    id779206996(["rresult"])
    style id779206996 fill:#BBB
  end
  subgraph 345009057 ["sexplib0"]
    id267566403(["sexplib0"])
    style id267566403 fill:#BBB
  end
  subgraph 37868010 ["ppx_sexp_conv"]
    id384587701(["ppx_sexp_conv.runtime-lib"])
    style id384587701 fill:#BBB
    id490832801(["ppx_sexp_conv.expander"])
    style id490832801 fill:#BBB
    id431945222(["ppx_sexp_conv"])
    style id431945222 fill:#BBB
  end
  subgraph 393735124 ["ocaml-compiler-libs"]
    id250303275(["ocaml-compiler-libs.shadow"])
    style id250303275 fill:#BBB
    id196159797(["ocaml-compiler-libs.common"])
    style id196159797 fill:#BBB
  end
  subgraph 50838805 ["re"]
    id736186284(["re"])
    style id736186284 fill:#BBB
  end
  subgraph 589116851 ["ocamlfind"]
    id625691540(["findlib.internal"])
    style id625691540 fill:#BBB
    id701773260(["findlib"])
    style id701773260 fill:#BBB
  end
  subgraph 668538665 ["fmt"]
    id9672888(["fmt"])
    style id9672888 fill:#BBB
  end
  subgraph 728143533 ["ppxlib"]
    id597334381(["ppxlib.traverse_builtins"])
    style id597334381 fill:#BBB
    id917977464(["ppxlib.stdppx"])
    style id917977464 fill:#BBB
    id451125523(["ppxlib.print_diff"])
    style id451125523 fill:#BBB
    id500424639(["ppxlib.metaquot_lifters"])
    style id500424639 fill:#BBB
    id591717662(["ppxlib.astlib"])
    style id591717662 fill:#BBB
    id493940453(["ppxlib.ast"])
    style id493940453 fill:#BBB
    id1060173278(["ppxlib"])
    style id1060173278 fill:#BBB
  end
  subgraph 736354641 ["ocamlgraph"]
    id932964826(["ocamlgraph"])
    style id932964826 fill:#BBB
  end
  subgraph 737393125 ["sexplib"]
    id769040463(["sexplib"])
    style id769040463 fill:#BBB
  end
  subgraph 74961155 ["bos"]
    id261970978(["bos"])
    style id261970978 fill:#BBB
  end
  subgraph 760144722 ["cmdliner"]
    id316126800(["cmdliner"])
    style id316126800 fill:#BBB
  end
  subgraph 771236823 ["seq"]
    id767300645(["seq"])
    style id767300645 fill:#BBB
  end
  subgraph 796857884 ["opam-format"]
    id27811258(["opam-format"])
    style id27811258 fill:#BBB
  end
  subgraph 804871866 ["ppx_derivers"]
    id419787933(["ppx_derivers"])
    style id419787933 fill:#BBB
  end
  subgraph 86790983 ["logs"]
    id350898877(["logs"])
    style id350898877 fill:#BBB
  end
  subgraph 870055720 ["ppx_deriving"]
    id220745025(["ppx_deriving.runtime"])
    style id220745025 fill:#BBB
    id552404124(["ppx_deriving.ord"])
    style id552404124 fill:#BBB
    id980760749(["ppx_deriving.eq"])
    style id980760749 fill:#BBB
    id878950795(["ppx_deriving.api"])
    style id878950795 fill:#BBB
  end
  subgraph 881110897 ["opam-core"]
    id125670630(["opam-core"])
    style id125670630 fill:#BBB
  end
  subgraph 902546259 ["(local)"]

    subgraph 122612022 ["depgraph"]
      id439874552(Opam_installed_graph)
      id882674132(Opam_findlib)
      id890445863(Findlib_graph)
      id130907115(Dune_describe_graph)
      id658580835(Dot_graph)
      id593996496(Depgraph)
      id175675044(Common)
      id122612022(["depgraph"])
    end
    subgraph 158492278 ["std"]
      id1008512934(Std)
      id916334710(Result_syntax)
      id262221135(Option_syntax)
      id768355202(Common_syntax)
      id158492278(["std"])
    end
    subgraph 189591663 ["main"]
      id591715563(Opam_installed)
      id725600054(Main)
      id1004882373(Findlib)
      id8714191(Dune_describe_file)
      id952370123(Dune)
      id326418831(Common)
      id189591663{"main"}
    end
    subgraph 312718400 ["ocamlgraph_extra"]
      id872997936(Ocamlgraph_extra)
      id157893572(Mermaid)
      id383119909(Graphviz)
      id312718400(["ocamlgraph_extra"])
    end
    subgraph 557698697 ["dune_describe"]
      id15495529(Dune_describe)
      id557698697(["dune_describe"])
    end
  end
  subgraph 997476828 ["opam-state"]
    id549045298(["opam-state"])
    style id549045298 fill:#BBB
  end
  189591663-->id261970978
  189591663-->id316126800
  189591663-->122612022
  id189591663-->id725600054
  id820557841-->id346353879
  id820557841-->id498790760
  id820557841-->id267566403
  id498790760-->id301824178
  id261970978-->id9672888
  id261970978-->id365328357
  id261970978-->id350898877
  id261970978-->id779206996
  id261970978-->id266426620
  id365328357-->id96640315
  id196159797-->id255847688
  id701773260-->id625691540
  id932964826-->id638246448
  id125670630-->id932964826
  id125670630-->id736186284
  id125670630-->id612096776
  id27811258-->id125670630
  id27811258-->id430993069
  id523500181-->id27811258
  id549045298-->id523500181
  id705946596-->id301824178
  id705946596-->id267566403
  id878950795-->id1060173278
  id878950795-->id65125095
  id980760749-->id878950795
  id552404124-->id878950795
  id220745025-->id65125095
  id431945222-->id490832801
  id490832801-->id820557841
  id490832801-->id500424639
  id384587701-->id267566403
  id1060173278-->id250303275
  id1060173278-->id419787933
  id1060173278-->id493940453
  id1060173278-->id451125523
  id1060173278-->id917977464
  id1060173278-->id597334381
  id493940453-->id591717662
  id493940453-->id638246448
  id591717662-->id196159797
  id500424639-->id1060173278
  id917977464-->id267566403
  id917977464-->id638246448
  id736186284-->id767300645
  id769040463-->id705946596
  id769040463-->id612096776
  id612096776-->id266426620
  122612022-->id701773260
  122612022-->id549045298
  122612022-->557698697
  122612022-->312718400
  122612022-->158492278
  id122612022-->id593996496
  557698697-->id220745025
  557698697-->id384587701
  557698697-->id769040463
  id557698697-->id15495529
  312718400-->id932964826
  id312718400-->id872997936
  id158492278-->id1008512934
  id952370123-->id326418831
  id8714191-->id326418831
  id1004882373-->id326418831
  id725600054-->id952370123
  id725600054-->id8714191
  id725600054-->id1004882373
  id725600054-->id591715563
  id591715563-->id326418831
  id593996496-->id658580835
  id593996496-->id130907115
  id593996496-->id890445863
  id593996496-->id439874552
  id658580835-->id175675044
  id130907115-->id882674132
  id890445863-->id882674132
  id882674132-->id175675044
  id439874552-->id175675044
  id157893572-->id383119909
  id872997936-->id157893572
  id1008512934-->id768355202
  id1008512934-->id262221135
  id1008512934-->id916334710
```

### findlib
Dependency graphs for _installed_ findlib libraries.
Includes clusters for opam packages.

#### Dependencies
```console
odep findlib --depends=dune-release
```
[![Findlib dependency graph for dune-release](img/findlib-depends-dune-release.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/findlib-depends-dune-release.svg)

#### Reverse dependencies
```console
odep findlib --rdepends=fmt
```
[![Findlib reverse dependency graph for fmt](img/findlib-rdepends-fmt.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/findlib-rdepends-fmt.svg)

#### Intersection of dependencies and reverse dependencies
```console
odep findlib --depends=dune-release --rdepends=fmt
```
[![Findlib dependency and reverse dependency intersection graph for dune-release and fmt](img/findlib-depends-dune-release-rdepends-fmt.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/findlib-depends-dune-release-rdepends-fmt.svg)

### opam
Dependency graphs for _installed_ opam packages.

#### Dependencies
```console
odep opam --depends=dune-release
```
[![Opam dependency graph for dune-release](img/opam-depends-dune-release.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/opam-depends-dune-release.svg)

#### Reverse dependencies
```console
odep opam --rdepends=fmt
```
[![Opam reverse dependency graph for fmt](img/opam-rdepends-fmt.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/opam-rdepends-fmt.svg)

#### Intersection of dependencies and reverse dependencies
```console
odep opam --depends=dune-release --rdepends=fmt
```
[![Opam dependency and reverse dependency intersection graph for dune-release and fmt](img/opam-depends-dune-release-rdepends-fmt.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/opam-depends-dune-release-rdepends-fmt.svg)

## Other tools

* [dune-deps](https://github.com/mjambon/dune-deps) — dune only, custom dune files parsing.
* [opam-dot](https://github.com/Drup/opam-dot) — opam only, outdated ([fork](https://github.com/sim642/opam-dot)).
* [depgraph](https://github.com/rgrinberg/ocaml-depgraph) — modules only (via `ocamldep`), inactive.
* [odoc-depgraph](https://github.com/zoggy/odoc_depgraph) — modules only (in `ocamldoc`), inactive.
* [`ocamldoc -dot`](https://v2.ocaml.org/manual/ocamldoc.html) — modules only (in `ocamldoc`).
* [codept](https://github.com/Octachron/codept) — `ocamldep` alternative, has `dot` output, no dune integration.
* [opam-dune-lint](https://github.com/ocurrent/opam-dune-lint) — package-library mapping, no graphing.
