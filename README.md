# OCaml String Calculator

## Install
```bash
git clone git@github.com:bartboy011/ocaml-string-calculator.git

cd ocaml-string-calculator
opam switch create . 4.06.1

opam install utop merlin alcotest ocp-indent dune
```

#### NOTE: You may need to run the command `eval $(opam config env)`

## Tests
```bash
dune runtest
```
