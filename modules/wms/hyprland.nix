{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  extraPackages = with pkgs; [
    eww
    rofi-wayland
    xdg-desktop-portal-hyprland
    pavucontrol
    libnotify
    brightnessctl
    playerctl
    pamixer
    dunst
    tlp
  ];
  xdg = {
    enable = true;
    configFile."hypr" = {
      source = ../../config/hypr;
    };
  };
}
