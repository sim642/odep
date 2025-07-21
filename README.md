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
  subgraph 102480166 ["opam-format 2.4.0"]
    id615726552(["opam-format"])
    style id615726552 fill:#BBB
  end
  subgraph 105050893 ["ppx_derivers 1.2.1"]
    id1023626359(["ppx_derivers"])
    style id1023626359 fill:#BBB
  end
  subgraph 129913994 ["(compiler)"]
    id1315639(["unix"])
    style id1315639 fill:#BBB
    id316257320(["compiler-libs.common"])
    style id316257320 fill:#BBB
    id335749456(["compiler-libs"])
    style id335749456 fill:#BBB
    id544138070(["bigarray"])
    style id544138070 fill:#BBB
  end
  subgraph 131039579 ["uutf 1.0.4"]
    id105590012(["uutf"])
    style id105590012 fill:#BBB
  end
  subgraph 152457554 ["ocamlfind 1.9.8"]
    id461103549(["findlib.internal"])
    style id461103549 fill:#BBB
    id727423305(["findlib"])
    style id727423305 fill:#BBB
  end
  subgraph 197557647 ["base v0.16.4"]
    id586369146(["base.shadow_stdlib"])
    style id586369146 fill:#BBB
    id924125828(["base.caml"])
    style id924125828 fill:#BBB
    id1016984300(["base.base_internalhash_types"])
    style id1016984300 fill:#BBB
    id670488034(["base"])
    style id670488034 fill:#BBB
  end
  subgraph 247067125 ["opam-core 2.4.0"]
    id699261740(["opam-core"])
    style id699261740 fill:#BBB
  end
  subgraph 250659719 ["parsexp v0.16.0"]
    id411232616(["parsexp"])
    style id411232616 fill:#BBB
  end
  subgraph 292359173 ["astring 0.8.5"]
    id487532716(["astring"])
    style id487532716 fill:#BBB
  end
  subgraph 349241649 ["jsonm 1.0.2"]
    id1005923351(["jsonm"])
    style id1005923351 fill:#BBB
  end
  subgraph 381082807 ["opam-file-format 2.2.0"]
    id735894979(["opam-file-format"])
    style id735894979 fill:#BBB
  end
  subgraph 423149259 ["fmt 0.10.0"]
    id656295196(["fmt"])
    style id656295196 fill:#BBB
  end
  subgraph 431173517 ["sexplib v0.16.0"]
    id462220983(["sexplib"])
    style id462220983 fill:#BBB
  end
  subgraph 431295198 ["sha 1.15.4"]
    id917875970(["sha"])
    style id917875970 fill:#BBB
  end
  subgraph 438175530 ["fpath 0.7.3"]
    id522271446(["fpath"])
    style id522271446 fill:#BBB
  end
  subgraph 458205106 ["seq base"]
    id406642827(["seq"])
    style id406642827 fill:#BBB
  end
  subgraph 497614195 ["opam-repository 2.4.0"]
    id778760059(["opam-repository"])
    style id778760059 fill:#BBB
  end
  subgraph 510801370 ["logs 0.9.0"]
    id556151374(["logs"])
    style id556151374 fill:#BBB
  end
  subgraph 515813516 ["ocamlgraph 2.2.0"]
    id52020057(["ocamlgraph"])
    style id52020057 fill:#BBB
  end
  subgraph 591990434 ["bos 0.2.1"]
    id547135673(["bos"])
    style id547135673 fill:#BBB
  end
  subgraph 619828698 ["sexplib0 v0.16.0"]
    id15418542(["sexplib0"])
    style id15418542 fill:#BBB
  end
  subgraph 641104511 ["cmdliner 1.3.0"]
    id371225968(["cmdliner"])
    style id371225968 fill:#BBB
  end
  subgraph 684657127 ["ppx_deriving 6.0.3"]
    id146452769(["ppx_deriving.runtime"])
    style id146452769 fill:#BBB
    id674417156(["ppx_deriving.ord"])
    style id674417156 fill:#BBB
    id773464780(["ppx_deriving.eq"])
    style id773464780 fill:#BBB
    id240017912(["ppx_deriving.api"])
    style id240017912 fill:#BBB
  end
  subgraph 747883779 ["stdlib-shims 0.3.0"]
    id466892178(["stdlib-shims"])
    style id466892178 fill:#BBB
  end
  subgraph 765420893 ["patch 3.0.0"]
    id86267199(["patch"])
    style id86267199 fill:#BBB
  end
  subgraph 766362805 ["rresult 0.7.0"]
    id450043277(["rresult"])
    style id450043277 fill:#BBB
  end
  subgraph 784829750 ["re 1.13.2"]
    id898742252(["re"])
    style id898742252 fill:#BBB
  end
  subgraph 837386068 ["ocaml-compiler-libs v0.12.4"]
    id672046665(["ocaml-compiler-libs.shadow"])
    style id672046665 fill:#BBB
    id283361239(["ocaml-compiler-libs.common"])
    style id283361239 fill:#BBB
  end
  subgraph 878175101 ["spdx_licenses 1.4.0"]
    id287260738(["spdx_licenses"])
    style id287260738 fill:#BBB
  end
  subgraph 8846408 ["opam-state 2.4.0"]
    id56385167(["opam-state"])
    style id56385167 fill:#BBB
  end
  subgraph 894937073 ["ppx_sexp_conv v0.16.0"]
    id437688897(["ppx_sexp_conv.runtime-lib"])
    style id437688897 fill:#BBB
    id153960813(["ppx_sexp_conv.expander"])
    style id153960813 fill:#BBB
    id999753992(["ppx_sexp_conv"])
    style id999753992 fill:#BBB
  end
  subgraph 902546259 ["(local)"]

    subgraph 182590919 ["ocamlgraph_extra"]
      id909167910(Ocamlgraph_extra)
      id364200234(Mermaid)
      id19961921(Graphviz)
      id182590919(["ocamlgraph_extra"])
    end
    subgraph 217239486 ["opam_state_compat_gen"]
      id225401095(Opam_state_compat_gen)
      id887042935{"opam_state_compat_gen"}
    end
    subgraph 251677328 ["std"]
      id577348791(String_compat)
      id154524232(Std)
      id211704847(Result_syntax)
      id739284559(Option_syntax)
      id787477767(List_compat)
      id913891041(Common_syntax)
      id251677328(["std"])
    end
    subgraph 404911043 ["depgraph"]
      id888013992(Opam_installed_graph)
      id83337716(Opam_findlib)
      id402513488(Findlib_graph)
      id397688033(Dune_describe_graph)
      id400143624(Dot_graph)
      id778564616(Depgraph)
      id945919667(Common)
      id404911043(["depgraph"])
    end
    subgraph 416710505 ["dune_describe"]
      id865590424(Dune_describe)
      id416710505(["dune_describe"])
    end
    subgraph 460641903 ["opam_state_compat"]
      id370066574(Opam_state_compat)
      id460641903(["opam_state_compat"])
    end
    subgraph 775305508 ["main"]
      id167761484(Opam_installed)
      id253906758(Main)
      id43597349(Findlib)
      id636561608(Dune_describe_file)
      id517256953(Dune)
      id525249012(Common)
      id71640535{"main"}
    end
  end
  subgraph 926200846 ["ppxlib 0.35.0"]
    id1018932431(["ppxlib.traverse_builtins"])
    style id1018932431 fill:#BBB
    id77382500(["ppxlib.stdppx"])
    style id77382500 fill:#BBB
    id713939691(["ppxlib.print_diff"])
    style id713939691 fill:#BBB
    id1036258264(["ppxlib.metaquot_lifters"])
    style id1036258264 fill:#BBB
    id859130989(["ppxlib.astlib"])
    style id859130989 fill:#BBB
    id78357412(["ppxlib.ast"])
    style id78357412 fill:#BBB
    id1059118486(["ppxlib"])
    style id1059118486 fill:#BBB
  end
  subgraph 967655810 ["swhid_core 0.1"]
    id461538233(["swhid_core"])
    style id461538233 fill:#BBB
  end
  775305508-->id547135673
  775305508-->id371225968
  775305508-->404911043
  id71640535-->id253906758
  217239486-->id56385167
  id887042935-->id225401095
  id670488034-->id1016984300
  id670488034-->id924125828
  id670488034-->id586369146
  id670488034-->id15418542
  id547135673-->id656295196
  id547135673-->id522271446
  id547135673-->id556151374
  id547135673-->id450043277
  id547135673-->id1315639
  id522271446-->id487532716
  id1005923351-->id105590012
  id283361239-->id316257320
  id727423305-->id461103549
  id699261740-->id1005923351
  id699261740-->id52020057
  id699261740-->id86267199
  id699261740-->id898742252
  id699261740-->id917875970
  id699261740-->id461538233
  id699261740-->id1315639
  id615726552-->id699261740
  id615726552-->id735894979
  id778760059-->id615726552
  id56385167-->id778760059
  id56385167-->id287260738
  id411232616-->id15418542
  id240017912-->id1059118486
  id773464780-->id240017912
  id674417156-->id240017912
  id999753992-->id153960813
  id153960813-->id670488034
  id153960813-->id1036258264
  id437688897-->id15418542
  id1059118486-->id672046665
  id1059118486-->id1023626359
  id1059118486-->id78357412
  id1059118486-->id713939691
  id1059118486-->id77382500
  id1059118486-->id1018932431
  id78357412-->id859130989
  id78357412-->id466892178
  id859130989-->id283361239
  id1036258264-->id1059118486
  id77382500-->id15418542
  id77382500-->id466892178
  id898742252-->id406642827
  id462220983-->id411232616
  id462220983-->id544138070
  id917875970-->id466892178
  id544138070-->id1315639
  id316257320-->id335749456
  404911043-->id727423305
  404911043-->416710505
  404911043-->182590919
  404911043-->460641903
  404911043-->251677328
  id404911043-->id778564616
  416710505-->id146452769
  416710505-->id437688897
  416710505-->id462220983
  id416710505-->id865590424
  182590919-->id52020057
  id182590919-->id909167910
  460641903-->id56385167
  id460641903-->id370066574
  id251677328-->id154524232
  id517256953-->id525249012
  id636561608-->id525249012
  id43597349-->id525249012
  id253906758-->id517256953
  id253906758-->id636561608
  id253906758-->id43597349
  id253906758-->id167761484
  id167761484-->id525249012
  id778564616-->id400143624
  id778564616-->id397688033
  id778564616-->id402513488
  id778564616-->id888013992
  id400143624-->id945919667
  id397688033-->id83337716
  id402513488-->id83337716
  id83337716-->id945919667
  id888013992-->id945919667
  id364200234-->id19961921
  id909167910-->id364200234
  id154524232-->id913891041
  id154524232-->id787477767
  id154524232-->id739284559
  id154524232-->id211704847
  id154524232-->id577348791
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
* [opam-0install](https://github.com/ocaml-opam/opam-0install-solver?tab=readme-ov-file#dependency-graph) — opam only.
* [depgraph](https://github.com/rgrinberg/ocaml-depgraph) — modules only (via `ocamldep`), inactive.
* [module-graph](https://github.com/ocamlpro/module-graph) — modules only, based on compiled object files.
* [odoc-depgraph](https://github.com/zoggy/odoc_depgraph) — modules only (in `ocamldoc`), inactive.
* [`ocamldoc -dot`](https://v2.ocaml.org/manual/ocamldoc.html) — modules only (in `ocamldoc`).
* [codept](https://github.com/Octachron/codept) — `ocamldep` alternative, has `dot` output, no dune integration.
* [opam-dune-lint](https://github.com/ocurrent/opam-dune-lint) — package-library mapping, no graphing.
