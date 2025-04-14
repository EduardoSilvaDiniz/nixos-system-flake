{
  pkgs,
  pkgs-unstable,
  ...
}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = pkgs-unstable.neovim-unwrapped;
    withPython3 = true;
    withNodeJs = true;
    withRuby = false;

    plugins = with pkgs.vimPlugins; [nvim-treesitter.withAllGrammars];

    extraPackages = with pkgs; [
			imagemagick
      uncrustify
      chafa
      ueberzugpp
    ];
  };
  home.packages =
    (with pkgs.lua51Packages; [
      lua
      luarocks
    ])
    ++ (with pkgs-unstable; [
      sqlite
      tree-sitter
      lazygit
      hpx
    ]);
}
