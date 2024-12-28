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
      uncrustify
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
