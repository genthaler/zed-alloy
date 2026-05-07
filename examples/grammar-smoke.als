sig A, B, C {}

lone sig LoneSig {}

some sig SomeSig {}

one sig OneSig {}

sig Extender extends A {}

sig Included in A + B + C {}

var abstract some sig MutableAbstract {}

sig Fields {
  left, right: none,
  var state: univ,
  disj first, second: iden,
  target: disj none,
  negative: -1,
} {
  none
  univ
  iden
  -42
}
