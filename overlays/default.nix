{ config, pkgs, lib, inputs, ... }: {
  nixpkgs = {
    overlays =  [
      inputs.neovim-nightly-overlay.overlay
    ];
  };
}

