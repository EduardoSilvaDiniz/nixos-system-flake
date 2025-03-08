{pkgs, ...}: {
  services.xserver.windowManager.i3 = {
    enable = true;
  };

  xdg.configFile."i3" = {
    source = "../../../config/i3";
  };

  environment.systemPackages = with pkgs; [
    dmenu
    i3status
    i3lock
    i3blocks
    brightnessctl
    playerctl
    libnotify
    pamixer
    lxappearance
    rofi
    picom
    autorandr
    flameshot
    blueman
    networkmanagerapplet
    gthumb
    zathura
    nautilus
    nitrogen
  ];
}
