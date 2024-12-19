{pkgs, lib, ...}: 
with lib;
let
  cfg = config.modules.desktop.gnome;
in {
  config = mkIf cfg.enable {
    services.xserver = {
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
    };
    environment.gnome.excludePackages = with pkgs; [
      gnome-tour
      epiphany
      geary
      gnome-tweaks
      gnome-settings-daemon
      adwaita-icon-theme
    ];

    environment.systemPackages = with pkgs.gnomeExtensions; [
      appindicator
      vitals
      gtk4-desktop-icons-ng-ding
    ];
  };
}
