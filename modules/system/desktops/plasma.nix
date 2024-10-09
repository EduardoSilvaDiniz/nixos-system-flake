{pkgs, ...}: {
  displayManager.sddm.wayland.enable = true;
  desktopManager.plasma6.enable = true;
  environment.systemPackages = with pkgs; [];
  environment.gnome.excludePackages = with pkgs; [];
}
