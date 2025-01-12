{pkgs, ...}: {
powerManagement.enable = true;
  services.xserver = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    epiphany
    geary
  ];
  environment.systemPackages =
    (with pkgs; [
      gnome-tweaks
      adwaita-icon-theme
      gnome-settings-daemon
      gnome-online-accounts
    ])
    ++ (with pkgs.gnomeExtensions; [
      appindicator
      vitals
      gtk4-desktop-icons-ng-ding
    ]);
}
