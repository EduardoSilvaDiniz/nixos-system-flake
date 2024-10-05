{
  pkgs,
  inputs,
  ...
}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
    withPython3 = true;
    withNodeJs = false;
    withRuby = false;

    plugins = with pkgs.vimPlugins; [
      nvim-treesitter.withAllGrammars
    ];

    extraPython3Packages = ps:
      with ps; [
        tasklib
        six
        packaging
        python-lsp-server # LSP python
      ];

    extraPackages = [
      pkgs.lazygit
      (import ./lsps.nix {inherit pkgs;})
    ];
  };
}
