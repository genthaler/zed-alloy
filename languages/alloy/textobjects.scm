; Text objects for Zed Vim mode.

(comment)+ @comment.around

[
  (signature_declaration)
  (enum_declaration)
] @class.around

(fact_declaration
  (block) @function.inside) @function.around

(predicate_declaration
  (block) @function.inside) @function.around

(function_declaration
  body: (braced_expression) @function.inside) @function.around

(assertion_declaration
  (block) @function.inside) @function.around

(command_declaration
  target: (block) @function.inside) @function.around

(command_declaration) @function.around
