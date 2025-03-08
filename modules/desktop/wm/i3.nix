{pkgs, ...}: {
  xsession.windowManager.i3 = {
    enable = true;
  };
  home.packages = with pkgs; [
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
