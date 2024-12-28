{
  pkgs,
  pkgs-unstable,
  ...
}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = pkgs-unstable.neovim-unwrapped;
    withPython3 = false;
    withNodeJs = false;
    withRuby = false;

    plugins = with pkgs.vimPlugins; [nvim-treesitter.withAllGrammars];

    extraPackages = with pkgs; [
      ## Nix
      nil # LSP
      alejandra # format
      deadnix # diagnostics
      statix # code action
      uncrustify # format
      ## dependencies for fzf-lua
      chafa
      ueberzugpp
    ];
  };
  home.packages =
    (with pkgs; [
      sqlite
      tree-sitter
      lazygit
    ])
    ++ (with pkgs.lua51Packages; [
      lua
      luarocks
    ]);
}
