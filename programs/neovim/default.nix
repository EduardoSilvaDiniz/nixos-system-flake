{ lib, config, pkgs, ... }: {
  programs.neovim = {
    defaultEditor = true;
    withPython3 = true;
    withNodeJs = true;
    plugins = with pkgs.vimPlugins; [
    ];
    extraPackages = with pkgs; [
      ast-grep
      black
      cargo
      dockerfile-language-server-nodejs
      efm-langserver
      fd
      gcc
      haskellPackages.haskell-language-server
      imagemagick
      isort
      libclang
      ltex-ls
      lua-language-server
      nil
      nixfmt
      nodePackages.pyright
      nodePackages.sql-formatter
      nodePackages.typescript-language-server
      nodejs
      ocamlPackages.ocaml-lsp
      postgresql
      prettierd
      ripgrep
      rust-analyzer
      shellcheck
      shfmt
      src-cli
      stylua
      tailwindcss-language-server
      terraform-ls
      vscode-langservers-extracted
      xsel
      yaml-language-server
      zk
    ];
  };
}
