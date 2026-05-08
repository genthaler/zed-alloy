// Exercises the currently supported tree-sitter-alloy6 grammar.

module examples/smoke[A]

open util/ordering[State] as ord

enum Color { Red, Green, Blue }

sig A, B, C {}

lone sig LoneSig {}

some sig SomeSig {}

one sig OneSig {}

sig Extender extends A {}

sig Included in A + B + C {}

var abstract some sig MutableAbstract {}

sig Fields {
  left, right: set A,
  var state: one State,
  disj first, second: lone B,
  target: disj some C,
  negative: -1,
} {
  no left & right
  some state
  first + second in B
  target != none
  -42
}

sig State {
  current: one A,
}

fact Facts {
  all f: Fields | f.left in A
  let roots = A + B | some roots
  { x: A | x in A }
}

pred show[f: Fields] {
  always some f.state
  eventually f.state' = f.state
}

fun Fields.targets[]: set B {
  first + second
}

assert HasState {
  all f: Fields | one f.state
}

check HasState for 5 but exactly 1 Fields, 1..3 steps expect 0

example: run show for 4
