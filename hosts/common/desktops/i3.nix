{pkgs, ...}:{
  services = {
    dbus = {
      enable = true;
    };

    displayManager = {
        defaultSession = "none+i3";
    };

    xserver = {
      enable = true;


      windowManager.i3 = {
        enable = true;
        extraPackages = with pkgs; [
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
      };
   };
  };
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}