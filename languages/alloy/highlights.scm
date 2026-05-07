; Highlights for https://github.com/bakaq/tree-sitter-alloy6.
; The grammar is currently minimal, so this query only uses confirmed nodes.

[
  "sig"
  "extends"
  "in"
  "disj"
] @keyword

(abstract) @keyword
(var) @keyword
(multiplicity) @keyword

[
  "+"
  "-"
] @operator

[
  ","
  ":"
] @punctuation.delimiter

[
  "{"
  "}"
] @punctuation.bracket

(sig_definition
  names: (name_list
    (identifier) @type))

(field_declaration
  (name_list
    (identifier) @variable.other.member))

(sig_extends
  extends: (qualified_name
    (identifier) @type))

(sig_in
  in_list: (sig_in_list
    (qualified_name
      (identifier) @type)))

(constant) @constant

((constant) @constant.numeric.integer
  (#match? @constant.numeric.integer "^-?[0-9]+$"))

((constant) @constant.builtin
  (#match? @constant.builtin "^(none|univ|iden)$"))
