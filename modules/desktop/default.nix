{
  lib,
  config,
  options,
  pkgs,
  ...
}:
with lib; let
  cfg = config.modules.desktop;
in {
  config = mkMerge [
    (mkIf (cfg.type != null) {
      fonts = {
        fontDir.enable = true;
        enableGhostscriptFonts = true;
        packages = with pkgs; [
          ubuntu_font_family
          dejavu_fonts
          symbola
        ];
      };
      environment.systemPackages = with pkgs; [
        libnotify # notify-send
        xdg-utils
        sox # for `play` utility
      ];
    })
  ];
}
