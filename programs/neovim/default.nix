{ lib, config, pkgs, ... }: {
  programs.neovim = {
    defaultEditor = true;
    withPython3 = true;
    withNodeJs = true;
    plugins = with pkgs.vimPlugins; [
    ];
    extraPackages = with pkgs; [
      lua-language-server
      nil
      nixfmt
      nodePackages.pyright
      nodePackages.sql-formatter
      nodePackages.typescript-language-server
      vscode-html-languageserver
      nodejs
      prettierd
      rust-analyzer
      shellcheck
      shfmt
      src-cli
      stylua
      fd
      ripgrep
      gcc
      gnumake
      cmake
      lazygit
      python3
      nixfmt
      go
      unzip
      zip
      nodejs
      gzip
      php
      php83Packages.composer
      cargo
    ];
  };
}
