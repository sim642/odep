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
  subgraph 1009034736 ["fmt 0.9.0"]
    id614681436(["fmt"])
    style id614681436 fill:#BBB
  end
  subgraph 1020731658 ["re 1.10.4"]
    id817603210(["re"])
    style id817603210 fill:#BBB
  end
  subgraph 104811802 ["opam-format 2.1.5"]
    id178361781(["opam-format"])
    style id178361781 fill:#BBB
  end
  subgraph 105050893 ["ppx_derivers 1.2.1"]
    id944076602(["ppx_derivers"])
    style id944076602 fill:#BBB
  end
  subgraph 11357312 ["base v0.16.1"]
    id1001087518(["base.shadow_stdlib"])
    style id1001087518 fill:#BBB
    id631192440(["base.caml"])
    style id631192440 fill:#BBB
    id920833612(["base.base_internalhash_types"])
    style id920833612 fill:#BBB
    id615168812(["base"])
    style id615168812 fill:#BBB
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
  subgraph 250659719 ["parsexp v0.16.0"]
    id1067593255(["parsexp"])
    style id1067593255 fill:#BBB
  end
  subgraph 292359173 ["astring 0.8.5"]
    id727224986(["astring"])
    style id727224986 fill:#BBB
  end
  subgraph 306932333 ["opam-repository 2.1.5"]
    id979332654(["opam-repository"])
    style id979332654 fill:#BBB
  end
  subgraph 353386239 ["opam-state 2.1.5"]
    id261565931(["opam-state"])
    style id261565931 fill:#BBB
  end
  subgraph 389527603 ["result 1.5"]
    id577741237(["result"])
    style id577741237 fill:#BBB
  end
  subgraph 431173517 ["sexplib v0.16.0"]
    id85613087(["sexplib"])
    style id85613087 fill:#BBB
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
  subgraph 541823983 ["ocamlfind 1.9.6"]
    id886416438(["findlib.internal"])
    style id886416438 fill:#BBB
    id11445160(["findlib"])
    style id11445160 fill:#BBB
  end
  subgraph 556777479 ["opam-file-format 2.1.6"]
    id863133190(["opam-file-format"])
    style id863133190 fill:#BBB
  end
  subgraph 586824428 ["opam-core 2.1.5"]
    id935524513(["opam-core"])
    style id935524513 fill:#BBB
  end
  subgraph 591990434 ["bos 0.2.1"]
    id745446969(["bos"])
    style id745446969 fill:#BBB
  end
  subgraph 619828698 ["sexplib0 v0.16.0"]
    id845842863(["sexplib0"])
    style id845842863 fill:#BBB
  end
  subgraph 629932021 ["cmdliner 1.2.0"]
    id500343217(["cmdliner"])
    style id500343217 fill:#BBB
  end
  subgraph 747883779 ["stdlib-shims 0.3.0"]
    id967083485(["stdlib-shims"])
    style id967083485 fill:#BBB
  end
  subgraph 766362805 ["rresult 0.7.0"]
    id104639968(["rresult"])
    style id104639968 fill:#BBB
  end
  subgraph 814024879 ["ppxlib 0.30.0"]
    id281869556(["ppxlib.traverse_builtins"])
    style id281869556 fill:#BBB
    id919310622(["ppxlib.stdppx"])
    style id919310622 fill:#BBB
    id131632995(["ppxlib.print_diff"])
    style id131632995 fill:#BBB
    id926788961(["ppxlib.metaquot_lifters"])
    style id926788961 fill:#BBB
    id360973787(["ppxlib.astlib"])
    style id360973787 fill:#BBB
    id562070456(["ppxlib.ast"])
    style id562070456 fill:#BBB
    id25427089(["ppxlib"])
    style id25427089 fill:#BBB
  end
  subgraph 837386068 ["ocaml-compiler-libs v0.12.4"]
    id1048368575(["ocaml-compiler-libs.shadow"])
    style id1048368575 fill:#BBB
    id502843752(["ocaml-compiler-libs.common"])
    style id502843752 fill:#BBB
  end
  subgraph 894937073 ["ppx_sexp_conv v0.16.0"]
    id456126552(["ppx_sexp_conv.runtime-lib"])
    style id456126552 fill:#BBB
    id567549061(["ppx_sexp_conv.expander"])
    style id567549061 fill:#BBB
    id370539618(["ppx_sexp_conv"])
    style id370539618 fill:#BBB
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
    subgraph 305831830 ["opam_state_compat_gen"]
      id323374370(Opam_state_compat_gen)
      id305831830{"opam_state_compat_gen"}
    end
    subgraph 312718400 ["ocamlgraph_extra"]
      id872997936(Ocamlgraph_extra)
      id157893572(Mermaid)
      id383119909(Graphviz)
      id312718400(["ocamlgraph_extra"])
    end
    subgraph 433051691 ["opam_state_compat"]
      id80388000(Opam_state_compat)
      id433051691(["opam_state_compat"])
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
  189591663-->id745446969
  189591663-->id500343217
  189591663-->122612022
  id189591663-->id725600054
  305831830-->id261565931
  id305831830-->id323374370
  id615168812-->id920833612
  id615168812-->id631192440
  id615168812-->id1001087518
  id615168812-->id845842863
  id745446969-->id614681436
  id745446969-->id560603002
  id745446969-->id45133392
  id745446969-->id104639968
  id745446969-->id266426620
  id560603002-->id727224986
  id502843752-->id255847688
  id11445160-->id886416438
  id183162717-->id967083485
  id935524513-->id183162717
  id935524513-->id817603210
  id935524513-->id612096776
  id178361781-->id935524513
  id178361781-->id863133190
  id979332654-->id178361781
  id261565931-->id979332654
  id1067593255-->id845842863
  id953408392-->id25427089
  id953408392-->id577741237
  id263623291-->id953408392
  id834058755-->id953408392
  id958091540-->id577741237
  id370539618-->id567549061
  id567549061-->id615168812
  id567549061-->id926788961
  id456126552-->id845842863
  id25427089-->id1048368575
  id25427089-->id944076602
  id25427089-->id562070456
  id25427089-->id131632995
  id25427089-->id919310622
  id25427089-->id281869556
  id562070456-->id360973787
  id562070456-->id967083485
  id360973787-->id502843752
  id926788961-->id25427089
  id919310622-->id845842863
  id919310622-->id967083485
  id817603210-->id184246828
  id85613087-->id1067593255
  id85613087-->id612096776
  id612096776-->id266426620
  122612022-->id11445160
  122612022-->557698697
  122612022-->312718400
  122612022-->433051691
  122612022-->158492278
  id122612022-->id593996496
  557698697-->id958091540
  557698697-->id456126552
  557698697-->id85613087
  id557698697-->id15495529
  312718400-->id183162717
  id312718400-->id872997936
  433051691-->id261565931
  id433051691-->id80388000
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
* [not-ocamlfind](https://github.com/chetmurthy/not-ocamlfind) — findlib only.
* [opam-dot](https://github.com/Drup/opam-dot) — opam only, outdated ([fork](https://github.com/sim642/opam-dot)).
* [depgraph](https://github.com/rgrinberg/ocaml-depgraph) — modules only (via `ocamldep`), inactive.
* [module-graph](https://github.com/ocamlpro/module-graph) — modules only, based on compiled object files.
* [odoc-depgraph](https://github.com/zoggy/odoc_depgraph) — modules only (in `ocamldoc`), inactive.
* [`ocamldoc -dot`](https://v2.ocaml.org/manual/ocamldoc.html) — modules only (in `ocamldoc`).
* [codept](https://github.com/Octachron/codept) — `ocamldep` alternative, has `dot` output, no dune integration.
* [opam-dune-lint](https://github.com/ocurrent/opam-dune-lint) — package-library mapping, no graphing.
