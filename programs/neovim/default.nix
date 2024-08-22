{ lib, config, pkgs, inputs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
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
