{
  pkgs,
  pkgs-unstable,
  ...
}:
(with pkgs; [
  ## C/C++, C#, Java
  uncrustify

  ## Go, javascript, lua, Python, Typescript
  # refactoring

  ## C/C++
  ccls # LSP
  vscode-extensions.ms-vscode.cpptools # DAP
  # REPL
  cppcheck # Diagnostics

  ## Clojure
  clojure-lsp # LSP
  # DAP
  # REPL
  clj-kondo # Diagnostics

  ## Editorconfig
  editorconfig-checker # Diagnostics

  ## Docker
  # LSP
  hadolint # format

  ## Java
  jdt-language-server # LSP
  ### DAP
  vscode-extensions.vscjava.vscode-java-test
  vscode-extensions.vscjava.vscode-java-debug
  vscode-extensions.vscjava.vscode-gradle
  lombok
  # REPL
  google-java-format # format
  ### Diagnostics
  checkstyle
  pmd
  graalvm-ce # Extra

  ## JavaScript/Typescript
  nodePackages.typescript-language-server # LSP
  # REPL
  nodePackages_latest.prettier # format

  ## Go
  gopls # LSP
  delve # DAP
  gotests # tests
  gore # REPL
  ### Formats
  gofumpt # Enforce a stricter format than gofmt, while being backwards compatible.
  golines # long lines
  gosimports # imports
  goimports-reviser
  golangci-lint # diagnostics
  gomodifytags # code actions

  ## Html
  vscode-langservers-extracted # LSP
  html-tidy # diagnostics
  ### Format
  djlint
  prettierd
  rustywind

  ## Markdown
  markdown-oxide # LSP
  ### Format
  cbfmt
  textlint
  ### Diagnostics
  markdownlint-cli2
  mdl
  proselint
  vale
  write-good

  ## Make
  checkmake
  cmake-format

  ## Nix
  nil # LSP
  # DAP
  alejandra # Format
  deadnix # diagnostics
  statix # code action

  ## PHP
  phpactor # LSP
  vscode-extensions.xdebug.php-debug # DAP
  php83Packages.psysh # REPL
  # Format
  php83Packages.php-codesniffer
  php83Packages.php-cs-fixer
  # Diagnostics
  php83Packages.phpstan
  php83Packages.phpmd

  ## Python
  python312Packages.python-lsp-server # LSP
  # DAP
  python312Packages.ptpython # REPL
  ### Diagnostics
  pylint
  black
  isort

  ## Lua
  lua-language-server # LSP
  # DAP
  # REPL
  stylua # format

  ## Rust
  # LSP
  # DAP
  # REPL
  rustfmt # Format

  ## Shellscript
  nodePackages_latest.bash-language-server # LSP
  # DAP
  # REPL
  ### Format
  shellharden
  shfmt
  dotenv-linter # Diagnostics

  ## Sql
  ### Format
  python312Packages.sqlparse
  nodePackages_latest.sql-formatter
  sqlfluff

  ## others
  sqlite
])
++ (with pkgs-unstable; [
  vscode-js-debug # js DAP
])
