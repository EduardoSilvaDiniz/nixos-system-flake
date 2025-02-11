{pkgs, ...}:{
  environment.systemPackages = with pkgs; [
	neovim
    zsh
    wget
    curl
    git
    ripgrep
    coreutils
    fd
    fzf
    tesseract4
    imagemagick
    e2fsprogs
		tmux
    nodejs
    nodePackages.typescript-language-server # LSP
    vscode-js-debug # js DAP
    nodePackages_latest.prettier # format
    nil # LSP
    alejandra # format
    deadnix # diagnostics
    statix # code action
    lua-language-server # LSP
    stylua # format
      uncrustify
      chafa
      ueberzugpp
      sqlite
      tree-sitter
      lazygit
      hpx
      lua51Packages.lua
      lua51Packages.luarocks
    vimPlugins.nvim-treesitter.withAllGrammars
  ];
}
