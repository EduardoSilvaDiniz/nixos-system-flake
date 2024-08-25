{ pkgs, inputs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
    withPython3 = true;
    withNodeJs = true;
    plugins =           with pkgs.vimPlugins; [
      nvim-treesitter.withAllGrammars
    ];
    extraPackages = with pkgs; [
      ## LSPs
      vscode-langservers-extracted # html/css/js
      nodePackages.pyright # python
      nodePackages.sql-formatter # sql
      nodePackages.typescript-language-server # typescript
      nil # nix
      gopls # Go
      clang-tools # C/C++
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
      eslint_d # JavaScript/TypeScript
      golangci-lint # Go
      shellcheck # Shell scripts
      checkstyle # Java
      luajitPackages.luacheck # lua

      ## formatter
      prettierd # JavaScript/TypeScript, HTML, CSS
      gosimports # Go
      gofumpt # Go
      google-java-format  # Java
      php83Packages.php-codesniffer
      stylua  # Lua
      shfmt  # Shell scripts
      nixfmt-rfc-style # nix

      ## softwares utils
      fd
      ripgrep
      lazygit
    ];
  };
         
}
