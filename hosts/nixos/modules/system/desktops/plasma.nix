{pkgs, ...}: {
  services = {
    displayManager.sddm.wayland.enable = true;
    desktopManager.plasma6.enable = true;
  };

  environment.systemPackages = with pkgs; [];
  environment.plasma6.excludePackages = with pkgs; [];
}
