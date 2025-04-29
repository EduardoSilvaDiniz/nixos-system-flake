{pkgs, ...}: {
  services.desktopManager.plasma6.enable = true;
	services.fwupd.enable = true;
  environment.plasma6.excludePackages = with pkgs; [
    discover
  ];
  environment.systemPackages =
    (with pkgs; [
      gnome-calculator
			dmidecode
    ])
    ++ (with pkgs.kdePackages; [
      filelight
    ]);
}
