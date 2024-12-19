{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.programs.foo;
in {
  imports = [
    mkMerge
    [
      (mkIf cfg.desktop.gnome (import ./system/desktops/gnome.nix))
    ]
  ];
}
