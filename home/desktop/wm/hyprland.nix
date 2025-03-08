{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  home.file.".config/hypr" = {
    source = "/home/edu/Projetos/nixos/config/hypr";
    target = "~/.config/hypr";
  };

  home.packages = with pkgs; [
    wofi
    networkmanagerapplet
    brightnessctl
    playerctl
    waybar
    wlrctl
    flameshot
    blueman
    mpv
    imv
    hyprlock
    hypridle
    hyprpaper
    nautilus
    mupdf
    gsettings-qt
  ];
}
