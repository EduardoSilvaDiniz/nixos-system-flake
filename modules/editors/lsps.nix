{pkgs ? import <nixpkgs> {}}:
with pkgs; [
  #TODO ESTA FALTANDO LSP,FORMAT,CHECK,LINTER,DAP
  ## Languages
  ### All
  semgrep # format, lint debug?

  ### Go
  gopls # LSP
  gofumpt # Format
  goimports-reviser # Linter imports
  golangci-lint # Linter
  delve # DAP

  gomodifytags # show tags  
  gosimports # fix imports
  gotests # tests
  gore # REPL

  ### C/C++
  cpplint # Lint
  vscode-extensions.ms-vscode.cpptools # DAP

  ### Java
  jdt-language-server # LSP
  google-java-format # format
  checkstyle # Lint
  vscode-extensions.vscjava.vscode-java-debug # DAP

  ### Lua
  lua-language-server # LSP
  lua51Packages.luacheck # Format
  stylua # Lint

  ### JavaScript/Typescript
  eslint_d # LSP
  jsbeautifier
  nodePackages.typescript-language-server # LSP

  ### Html/Css
  html-tidy
  vscode-langservers-extracted
  prettierd
  #htmlbeautifier djlint # HTML
  rustywind
  stylelint

  ### Nix
  nil # LSP
  nixfmt-rfc-style # Format
  deadnix # Linter

  ### Markdown
  markdown-oxide # LSP

  ### Shellscript
  nodePackages_latest.bash-language-server # LSP
  shellcheck # Check, Linter
  shfmt # Format, Linter

  ### Python
  nodePackages.pyright # Check
  black # Format
  isort # Linter

  ### PHP
  vscode-extensions.xdebug.php-debug # php
  nodePackages_latest.intelephense # php
  php83Packages.php-codesniffer
  php83Packages.php-cs-fixer
  php83Packages.phpinsights
  #TODO quem são eles?
  #php83Packages.pint
  #php83Packages.prettier
  #php83Packages.prettynd # PHP

  ### Rust
  rustfmt # Format

  ### Make/Cmake
  cmake-format # Format

  ### Sql
  nodePackages.sql-formatter # Format
]
