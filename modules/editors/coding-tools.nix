{
  pkgs,
  pkgs-unstable,
  ...
}:
(with pkgs; [
  ## softwares
  sqlite
  tree-sitter

  ## C/C++, C#, Java
  uncrustify

  ## Go, javascript, lua, Python, Typescript
  # refactoring

  ## C/C++
  ccls # LSP
  lldb # DAP
  cppcheck # Diagnostics

  ## Clojure
  clojure-lsp # LSP
  clj-kondo # Diagnostics

  ## Editorconfig
  editorconfig-checker # Diagnostics

  ## Docker
  hadolint # format

  ## Java
  jdt-language-server # LSP
  # vscode-extensions.vscjava.vscode-java-test
  # vscode-extensions.vscjava.vscode-java-debug
  # vscode-extensions.vscjava.vscode-gradle
  lombok
  google-java-format # format
  ### Diagnostics
  checkstyle
  pmd
  graalvm-ce # Extra

  ## JavaScript/Typescript
  # nodePackages.typescript-language-server # LSP
  # vscode-js-debug # js DAP
  # DAP pkgs-unstable
  # nodePackages_latest.prettier # format

  ## Go
  # gopls # LSP
  # delve # DAP
  # gotests # Test
  # ### Formats
  # gofumpt # Enforce a stricter format than gofmt, while being backwards compatible.
  # golines # long lines
  # gotools # adds several tools (goimports)
  # goimports-reviser
  # golangci-lint # diagnostics
  # gomodifytags # code actions

  ## Html
  vscode-langservers-extracted # LSP
  html-tidy # diagnostics
  ### Format
  djlint
  prettierd
  rustywind

  ## Markdown
  # markdown-oxide # LSP
  # ### Format
  # cbfmt
  # textlint
  # ### Diagnostics
  # markdownlint-cli2
  # mdl
  # proselint
  # vale
  # write-good

  ## Make
  # checkmake
  # cmake-format

  ## Nix
  nil # LSP
  alejandra # Format
  deadnix # diagnostics
  statix # code action

  ## PHP
  # phpactor # LSP
  # vscode-extensions.xdebug.php-debug # DAP
  # # Format
  # php83Packages.php-codesniffer
  # php83Packages.php-cs-fixer
  # # Diagnostics
  # php83Packages.phpstan
  # php83Packages.phpmd

  ## Python
  # python312Packages.python-lsp-server # LSP
  # python312Packages.debugpy # DAP
  # ### Diagnostics
  # pylint
  # black
  # isort

  ## Lua
  lua-language-server # LSP
  stylua # format

  ## Rust
  # rust-analyzer # LSP
  # gdb # DAP
  # rustfmt # Format
  # leptosfmt

  ## Shellscript
  # nodePackages_latest.bash-language-server # LSP
  # # bash-debug # DAP não existe, talvez seja outro nome...
  # ### Format
  # shellharden
  # shfmt
  # dotenv-linter # Diagnostics

  ## Sql
  ### Format
  # python312Packages.sqlparse
  # nodePackages_latest.sql-formatter
  # sqlfluff

])
++ (with pkgs-unstable; [
])
