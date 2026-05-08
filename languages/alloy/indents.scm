; Auto-indentation for braced and bracketed Alloy constructs.

(block "}" @end) @indent
(braced_expression "}" @end) @indent
(set_comprehension "}" @end) @indent
(signature_declaration "}" @end) @indent
(enum_declaration "}" @end) @indent

(module_parameters "]" @end) @indent
(open_arguments "]" @end) @indent
(parameter_declarations "]" @end) @indent
(box_expression "]" @end) @indent
