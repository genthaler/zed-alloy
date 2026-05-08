module examples/tree

abstract sig Node {
  parent: lone Node,
}

one sig Root extends Node {}

sig Leaf in Node {}

fact TreeShape {
  no Root.parent
  all n: Node | n != Root implies some n.parent
}

pred connected {
  all n: Node | n in Root.*parent
}

run connected for 5 Node
