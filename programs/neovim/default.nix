{ lib, config, pkgs, inputs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
    withPython3 = true;
    withNodeJs = true;
    plugins = with pkgs.vimPlugins; [
      nvim-treesitter.withAllGrammars
    ];
    extraPackages = with pkgs; [
      #LSPs
      vscode-langservers-extracted # html/css/js
      nil # nix
      nixfmt #nix
      nodePackages.pyright # python
      nodePackages.sql-formatter # sql
      nodePackages.typescript-language-server # typescript

      gopls # Go
      clang # C/C++
      jdt-language-server # Java
      nodePackages_latest.intelephense # php
      lua-language-server # Lua
      nodePackages_latest.bash-language-server # bash

      ## DAP
      #NOT FOUND js-debug-adapter # JavaScript/TypeScript
      delve # Go
      vscode-extensions.ms-vscode.cpptools # C/C++
      #NOT FOUND java-debug-adapter # java
      #php-debug-adapter # PHP

      ## linters
      eslint_d # JavaScript/TypeScript
      golangci-lint # Go
      shellcheck # Shell scripts
      checkstyle # Java
      #phpcs # PHP
      #luacheck # lua

      ## formatter
      prettierd # JavaScript/TypeScript, HTML, CSS
      #goimports # Go
      gofumpt # Go
      google-java-format  # Java
      #phpcbf  # PHP
      stylua  # Lua
      shfmt  # Shell scripts

      ## softwares utils
      php83Packages.composer
      nodejs
      src-cli
      fd
      ripgrep
      lazygit
      unzip
      zip
      gzip

      ## compilers
      gcc
      gnumake
      cmake
      python3
      go
      nodejs
      php
      cargo
    ];
  };
         
}
