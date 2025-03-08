{pkgs, ...}: {
 	programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  xdg.configFile."hypr" = {
    source = "../../../config/hypr";
  };

  environment.systemPackages = with pkgs; [
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
