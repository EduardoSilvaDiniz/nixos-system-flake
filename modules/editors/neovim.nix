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
    withRuby = true;

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
			hpx
    ])
    ++ (with pkgs.lua51Packages; [
      lua
      luarocks
    ]);
}
