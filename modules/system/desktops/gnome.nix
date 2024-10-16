{pkgs, ...}: {
  services.xserver = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  environment.systemPackages = with pkgs.gnome; [
    gnome-tweaks
    gnome-settings-daemon
    adwaita-icon-theme
  ];
  environment.gnome.excludePackages =
    (with pkgs; [gnome-tour])
    ++ (with pkgs.gnome; [
      epiphany
      geary
    ]);
}
