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
    withNodeJs = false;
    withRuby = false;

    plugins = with pkgs.vimPlugins; [
      nvim-treesitter.withAllGrammars
    ];

    # por enquanto vou deixa comentado pois já coloquei a instalação
    # do lsp do python dentro do coding-tools.
    # extraPython3Packages = ps:
    #   with ps; [
    #     python-lsp-server # LSP python
    #   ];

    extraPackages = import ./coding-tools.nix {inherit pkgs pkgs-unstable;};
  };

  home.packages = with pkgs; [
    lazygit
    lua51Packages.luarocks
  ];
}
