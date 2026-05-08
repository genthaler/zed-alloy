# zed-alloy

Alloy 6 language support for [Zed](https://zed.dev), powered by
[`tree-sitter-alloy6`](https://github.com/genthaler/tree-sitter-alloy6).

## Features

- Recognizes `.als` files as Alloy.
- Provides syntax highlighting for parsed Alloy modules, declarations,
  paragraphs, expressions, comments, and commands.
- Configures basic Alloy editor behavior such as comments and bracket pairing.

## Current Scope

This extension is intentionally minimal. It currently supports syntax
highlighting for the Alloy constructs represented by the Tree-sitter grammar,
including modules, opens, signatures, facts, predicates, functions, assertions,
commands, enums, fields, multiplicities, common expressions, comments, and
built-in constants such as `none`, `univ`, and `iden`.

Highlighting is syntax-based. The extension does not perform semantic analysis,
so references are highlighted conservatively based on their parse context.

Formatting is not implemented.

## Installation

Until this extension is published, install it as a Zed dev extension:

1. Clone this repository.
2. Open Zed.
3. Run `zed: extensions` from the command palette.
4. Select `Install Dev Extension`.
5. Choose the cloned `zed-alloy` directory.
6. Open a `.als` file.

If Zed does not pick up changes immediately, run `zed: reload extensions` from
the command palette and reopen the Alloy file.

If the Tree-sitter grammar revision changes in `extension.toml`, `zed: reload
extensions` may not be enough. Zed can keep using a previously generated grammar
cache under this repository's ignored `grammars/` directory, which can make
highlighting disappear or produce an error such as `failed to load language
Alloy`.

For grammar revision changes, reinstall the dev extension:

1. Remove the generated `grammars/` directory from this checkout if it exists.
2. Run `zed: extensions` from the command palette.
3. Select `Install Dev Extension`.
4. Choose the cloned `zed-alloy` directory again.
5. Reopen the `.als` file.

## Example

See [examples/example.als](examples/example.als) for a small readable Alloy
model and [examples/grammar-smoke.als](examples/grammar-smoke.als) for a broader
grammar smoke file.

## Grammar

The extension uses the grammar declared in [extension.toml](extension.toml):

```toml
[grammars.alloy6]
repository = "https://github.com/genthaler/tree-sitter-alloy6"
```

The fork uses the lowercase grammar name `alloy6`, which matches Zed's
snake_case grammar naming requirement and exports `tree_sitter_alloy6`.

## Development

The extension layout follows Zed's language extension conventions:

- `extension.toml` declares extension metadata and the Tree-sitter grammar.
- `languages/alloy/config.toml` maps `.als` files to the Alloy language.
- `languages/alloy/highlights.scm` contains Tree-sitter highlight queries.
- `examples/example.als` provides a small manual test file.

Useful checks:

```sh
tree-sitter parse examples/example.als
tree-sitter query languages/alloy/highlights.scm examples/example.als
```

Run those from a checkout of the grammar repository, or configure Tree-sitter's
parser directories so it can find the `alloy6` grammar.
