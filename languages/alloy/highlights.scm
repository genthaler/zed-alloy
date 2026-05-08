; Highlights for https://github.com/genthaler/tree-sitter-alloy6.

[
  "module"
  "open"
  "as"
  "sig"
  "var"
  "abstract"
  "extends"
  "in"
  "disj"
  "fact"
  "pred"
  "fun"
  "assert"
  "enum"
  "run"
  "check"
  "for"
  "but"
  "exactly"
  "steps"
  "expect"
  "let"
  "else"
] @keyword

(comment) @comment

(multiplicity) @keyword
(quantifier) @keyword

[
  (multiplicity_unary_operator)
  (logical_unary_operator)
] @keyword.operator

[
  "+"
  "-"
  "++"
  "&"
  "."
  "->"
  "<:"
  ":>"
  ";"
  "="
  "!"
  "<"
  ">"
  "=<"
  ">="
  "<=>"
  "=>"
  "||"
  "&&"
  "@"
  "#"
  "~"
  "*"
  "^"
  "'"
  "|"
  (arrow_operator)
  (comparison_operator)
  (relational_unary_operator)
] @operator

[
  ","
  ":"
] @punctuation.delimiter

[
  "{"
  "}"
  "["
  "]"
  "("
  ")"
] @punctuation.bracket

(module_declaration
  name: (qualified_name
    (identifier) @module))

(module_parameters
  (identifier) @type)

(open_declaration
  name: (qualified_name
    (identifier) @module))

(open_declaration
  alias: (identifier) @module)

(open_arguments
  (qualified_name
    (identifier) @type))

(signature_declaration
  names: (name_list
    (identifier) @type))

(signature_extension
  type: (qualified_name
    (identifier) @type))

(signature_extension
  types: (qualified_name
    (identifier) @type))

(field_declaration
  (declaration
    (name_list
      (identifier) @variable.other.member)))

(parameter_declarations
  (declaration
    (name_list
      (identifier) @variable.parameter)))

(quantified_expression
  (declaration
    (name_list
      (identifier) @variable)))

(set_comprehension
  (declaration
    (name_list
      (identifier) @variable)))

(let_declaration
  (identifier) @variable)

(primary_expression
  (qualified_name
    (identifier) @variable.reference))

(at_name
  (identifier) @variable)

(type_scope
  (qualified_name
    (identifier) @type))

(scope
  (number) @constant.numeric.integer)

(command_declaration
  target: (qualified_name
    (identifier) @function))

(function_declaration
  return_type: (expression
    (primary_expression
      (qualified_name
        (identifier) @type))))

(declaration
  (expression
    (primary_expression
      (qualified_name
        (identifier) @type))))

(declaration
  (expression
    (unary_expression
      argument: (expression
        (primary_expression
          (qualified_name
            (identifier) @type))))))

(fact_declaration
  name: (identifier) @constant)

(predicate_declaration
  name: (identifier) @function)

(function_declaration
  name: (identifier) @function)

(assertion_declaration
  name: (identifier) @constant)

(command_declaration
  name: (identifier) @function)

(enum_declaration
  name: (identifier) @type)

(enum_declaration
  (identifier) @constant)

(receiver
  (qualified_name
    (identifier) @type))

(constant) @constant

(number) @constant.numeric.integer

((constant) @constant.builtin
  (#match? @constant.builtin "^(none|univ|iden)$"))

"this" @variable.builtin
