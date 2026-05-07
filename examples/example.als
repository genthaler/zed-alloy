abstract sig Object {}

one sig Root extends Object {}

sig Node in Object {
  universe: univ,
  empty: none,
  reachable: univ,
}

var sig State {
  selected: none,
} {
  none
  iden
}
