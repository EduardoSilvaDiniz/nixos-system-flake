{
  pkgs,
  inputs ? import <nixpkgs> {},
}: let
  LSPs = ./lsps.nix;
in {
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
      ];
    extraPackages = [
      LSPs
    ];
  };
}
