{pkgs ? import <nixpkgs> {}}:
with pkgs; [
  #TODO estou grande de mais!
  ## LSPs
  vscode-langservers-extracted # html/css/js
  nodePackages.pyright # python
  nodePackages.sql-formatter # sql
  nodePackages.typescript-language-server # typescript
  nil # nix
  gopls # Go
  jdt-language-server # Java
  nodePackages_latest.intelephense # php
  lua-language-server # Lua
  nodePackages_latest.bash-language-server # bash
  markdown-oxide # markdown

  ## DAP
  delve # Go
  vscode-extensions.ms-vscode.cpptools # C/C++
  vscode-extensions.vscjava.vscode-java-debug # java
  vscode-extensions.xdebug.php-debug # php

  ## linters
  ## formatter
  cpplint
  isort
  black # python
  cmake-format # cmake
  deadnix

  #htmlbeautifier djlint # HTML
  stylelint
  rustywind # CSS
  eslint_d # JavaScript/TypeScript
  prettierd # JavaScript/TypeScript, HTML, CSS
  php83Packages.php-codesniffer
  php83Packages.php-cs-fixer
  php83Packages.phpinsights
  #TODO quem são eles?
  #php83Packages.pint
  #php83Packages.prettier
  #php83Packages.prettynd # PHP
  rustfmt # Rust
  gosimports
  gofumpt
  goimports-reviser
  golines
  golangci-lint # Go
  google-java-format
  checkstyle # Java
  stylua # Lua
  shfmt
  shellcheck # Shell scripts
  nixfmt-rfc-style # nix
  lua51Packages.luacheck

  ## softwares utils
  lazygit
]
