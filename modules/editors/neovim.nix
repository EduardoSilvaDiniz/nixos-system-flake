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
    withRuby = true;

    plugins = with pkgs.vimPlugins; [nvim-treesitter.withAllGrammars];

    extraPackages = with pkgs; [
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
      ruby_3_4
      nodejs_22
      python3
    ]);
}
