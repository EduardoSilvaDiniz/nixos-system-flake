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

    extraPython3Packages = ps:
      with ps; [
        python-lsp-server # LSP python
      ];

    extraPackages = import ./lsps.nix {inherit pkgs pkgs-unstable;};
  };

  home.packages = with pkgs; [
    lazygit
    lua51Packages.luarocks
  ];
}
