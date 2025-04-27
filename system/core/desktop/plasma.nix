{pkgs, ...}: {
  services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = with pkgs; [
    discover
  ];
  environment.systemPackages =
    (with pkgs; [
      gnome-calculator
    ])
    ++ (with pkgs.kdePackages; [
      filelight
    ]);
}
