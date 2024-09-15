{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  nixpkgs = {
    overlays = [
      inputs.neovim-nightly-overlay.overlay
      inputs.emacs
      inputs.alejandra.defaultPackage.x86_64-linux
    ];
  };
}
