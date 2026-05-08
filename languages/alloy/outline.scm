; Code outline entries for top-level Alloy declarations.

(module_declaration
  name: (qualified_name) @name) @item

(open_declaration
  name: (qualified_name) @name) @item

(signature_declaration
  names: (name_list
    (identifier) @name)) @item

(enum_declaration
  name: (identifier) @name) @item

(fact_declaration
  name: (identifier) @name) @item

(predicate_declaration
  (receiver
    (qualified_name) @context)?
  name: (identifier) @name) @item

(function_declaration
  (receiver
    (qualified_name) @context)?
  name: (identifier) @name) @item

(assertion_declaration
  name: (identifier) @name) @item

(command_declaration
  name: (identifier) @name) @item

(command_declaration
  .
  target: (qualified_name) @name) @item
