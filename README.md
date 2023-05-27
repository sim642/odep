# odep

[![ci workflow status](https://github.com/sim642/odep/actions/workflows/ci.yml/badge.svg)](https://github.com/sim642/odep/actions/workflows/ci.yml)
[![GitHub release status](https://img.shields.io/github/v/release/sim642/odep)](https://github.com/sim642/odep/releases)
[![opam package status](https://badgen.net/opam/v/odep)](https://opam.ocaml.org/packages/odep)

Dependency graphs for OCaml modules, libraries and packages.

## Installation
```console
opam install odep
```

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
odep dune | dot -Tsvg > img/dune-odep.svg
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
  subgraph 1002963389 ["sexplib v0.15.1"]
    id933010783(["sexplib"])
    style id933010783 fill:#BBB
  end
  subgraph 1009034736 ["fmt 0.9.0"]
    id614681436(["fmt"])
    style id614681436 fill:#BBB
  end
  subgraph 1020731658 ["re 1.10.4"]
    id817603210(["re"])
    style id817603210 fill:#BBB
  end
  subgraph 105050893 ["ppx_derivers 1.2.1"]
    id944076602(["ppx_derivers"])
    style id944076602 fill:#BBB
  end
  subgraph 129913994 ["(compiler)"]
    id266426620(["unix"])
    style id266426620 fill:#BBB
    id255847688(["compiler-libs.common"])
    style id255847688 fill:#BBB
    id612096776(["bigarray"])
    style id612096776 fill:#BBB
  end
  subgraph 136087330 ["ocamlgraph 2.0.0"]
    id183162717(["ocamlgraph"])
    style id183162717 fill:#BBB
  end
  subgraph 267253855 ["opam-format 2.1.4"]
    id304775054(["opam-format"])
    style id304775054 fill:#BBB
  end
  subgraph 27787167 ["ppxlib 0.29.1"]
    id674223790(["ppxlib.traverse_builtins"])
    style id674223790 fill:#BBB
    id637838488(["ppxlib.stdppx"])
    style id637838488 fill:#BBB
    id29590499(["ppxlib.print_diff"])
    style id29590499 fill:#BBB
    id276751456(["ppxlib.metaquot_lifters"])
    style id276751456 fill:#BBB
    id532111497(["ppxlib.astlib"])
    style id532111497 fill:#BBB
    id433412055(["ppxlib.ast"])
    style id433412055 fill:#BBB
    id591135623(["ppxlib"])
    style id591135623 fill:#BBB
  end
  subgraph 292359173 ["astring 0.8.5"]
    id727224986(["astring"])
    style id727224986 fill:#BBB
  end
  subgraph 356529016 ["opam-file-format 2.1.5"]
    id1019648441(["opam-file-format"])
    style id1019648441 fill:#BBB
  end
  subgraph 388884003 ["cmdliner 1.1.1"]
    id63221697(["cmdliner"])
    style id63221697 fill:#BBB
  end
  subgraph 389527603 ["result 1.5"]
    id577741237(["result"])
    style id577741237 fill:#BBB
  end
  subgraph 414421865 ["opam-repository 2.1.4"]
    id576091353(["opam-repository"])
    style id576091353 fill:#BBB
  end
  subgraph 438175530 ["fpath 0.7.3"]
    id560603002(["fpath"])
    style id560603002 fill:#BBB
  end
  subgraph 458205106 ["seq base"]
    id184246828(["seq"])
    style id184246828 fill:#BBB
  end
  subgraph 477870478 ["ppx_deriving 5.2.1"]
    id958091540(["ppx_deriving.runtime"])
    style id958091540 fill:#BBB
    id834058755(["ppx_deriving.ord"])
    style id834058755 fill:#BBB
    id263623291(["ppx_deriving.eq"])
    style id263623291 fill:#BBB
    id953408392(["ppx_deriving.api"])
    style id953408392 fill:#BBB
  end
  subgraph 591990434 ["bos 0.2.1"]
    id745446969(["bos"])
    style id745446969 fill:#BBB
  end
  subgraph 6178814 ["opam-state 2.1.4"]
    id93057622(["opam-state"])
    style id93057622 fill:#BBB
  end
  subgraph 747883779 ["stdlib-shims 0.3.0"]
    id967083485(["stdlib-shims"])
    style id967083485 fill:#BBB
  end
  subgraph 766362805 ["rresult 0.7.0"]
    id104639968(["rresult"])
    style id104639968 fill:#BBB
  end
  subgraph 786384498 ["opam-core 2.1.4"]
    id88936760(["opam-core"])
    style id88936760 fill:#BBB
  end
  subgraph 809859606 ["ppx_sexp_conv v0.15.1"]
    id60257420(["ppx_sexp_conv.runtime-lib"])
    style id60257420 fill:#BBB
    id871298041(["ppx_sexp_conv.expander"])
    style id871298041 fill:#BBB
    id721132071(["ppx_sexp_conv"])
    style id721132071 fill:#BBB
  end
  subgraph 837386068 ["ocaml-compiler-libs v0.12.4"]
    id1048368575(["ocaml-compiler-libs.shadow"])
    style id1048368575 fill:#BBB
    id502843752(["ocaml-compiler-libs.common"])
    style id502843752 fill:#BBB
  end
  subgraph 845877412 ["parsexp v0.15.0"]
    id424004947(["parsexp"])
    style id424004947 fill:#BBB
  end
  subgraph 865781849 ["sexplib0 v0.15.1"]
    id741336038(["sexplib0"])
    style id741336038 fill:#BBB
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
  subgraph 903389259 ["logs 0.7.0"]
    id45133392(["logs"])
    style id45133392 fill:#BBB
  end
  subgraph 941025671 ["base v0.15.1"]
    id786028591(["base.shadow_stdlib"])
    style id786028591 fill:#BBB
    id222681442(["base.caml"])
    style id222681442 fill:#BBB
    id512745802(["base.base_internalhash_types"])
    style id512745802 fill:#BBB
    id382080688(["base"])
    style id382080688 fill:#BBB
  end
  subgraph 978357353 ["ocamlfind 1.9.5"]
    id1018876852(["findlib.internal"])
    style id1018876852 fill:#BBB
    id790166133(["findlib"])
    style id790166133 fill:#BBB
  end
  189591663-->id745446969
  189591663-->id63221697
  189591663-->122612022
  id189591663-->id725600054
  id382080688-->id512745802
  id382080688-->id786028591
  id382080688-->id741336038
  id786028591-->id222681442
  id745446969-->id614681436
  id745446969-->id560603002
  id745446969-->id45133392
  id745446969-->id104639968
  id745446969-->id266426620
  id560603002-->id727224986
  id502843752-->id255847688
  id790166133-->id1018876852
  id183162717-->id967083485
  id88936760-->id183162717
  id88936760-->id817603210
  id88936760-->id612096776
  id304775054-->id88936760
  id304775054-->id1019648441
  id576091353-->id304775054
  id93057622-->id576091353
  id424004947-->id222681442
  id424004947-->id741336038
  id953408392-->id591135623
  id953408392-->id577741237
  id263623291-->id953408392
  id834058755-->id953408392
  id958091540-->id577741237
  id721132071-->id871298041
  id871298041-->id382080688
  id871298041-->id276751456
  id60257420-->id741336038
  id591135623-->id1048368575
  id591135623-->id944076602
  id591135623-->id433412055
  id591135623-->id29590499
  id591135623-->id637838488
  id591135623-->id674223790
  id433412055-->id532111497
  id433412055-->id967083485
  id532111497-->id502843752
  id276751456-->id591135623
  id637838488-->id741336038
  id637838488-->id967083485
  id817603210-->id184246828
  id933010783-->id424004947
  id933010783-->id612096776
  id612096776-->id266426620
  122612022-->id790166133
  122612022-->id93057622
  122612022-->557698697
  122612022-->312718400
  122612022-->158492278
  id122612022-->id593996496
  557698697-->id958091540
  557698697-->id60257420
  557698697-->id933010783
  id557698697-->id15495529
  312718400-->id183162717
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
odep opam-installed --depends=dune-release
```
[![Opam dependency graph for dune-release](img/opam-depends-dune-release.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/opam-depends-dune-release.svg)

#### Reverse dependencies
```console
odep opam-installed --rdepends=fmt
```
[![Opam reverse dependency graph for fmt](img/opam-rdepends-fmt.svg)](https://raw.githubusercontent.com/sim642/odep/master/img/opam-rdepends-fmt.svg)

#### Intersection of dependencies and reverse dependencies
```console
odep opam-installed --depends=dune-release --rdepends=fmt
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
