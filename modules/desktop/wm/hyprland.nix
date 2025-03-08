{pkgs, ...}: {
	wayland.windowManager.hyprland = {
		enable = true;
    xwayland.enable = true;
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
