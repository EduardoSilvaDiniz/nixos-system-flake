{pkgs, ...}: {
  displayManager.gdm.enable = true;
  desktopManager.gnome.enable = true;
  environment.systemPackages = with pkgs; [
    (with gnome3; [gnome-tweaks])
    (with gnome; [
      gnome-settings-daemon
      adwaita-icon-theme
    ])
  ];
  environment.gnome.excludePackages = with pkgs; [
    (with gnome; [
      epiphany # web browser
      geary # email reader
    ])
    gnome-tour
  ];
}
