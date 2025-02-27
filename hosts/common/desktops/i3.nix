{pkgs, ...}:{
  environment.systemPackages = with pkgs; [
    brightnessctl
    playerctl
    libnotify
    pamixer
  ];
  services = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };
   
    displayManager = {
        defaultSession = "none+i3";
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu #application launcher most people use
        i3status # gives you the default i3 status bar
        i3lock #default i3 screen locker
        i3blocks #if you are planning on using i3blocks over i3status
     ];
    };
    xkb = {
      layout = "br";
      variant = "";
    };

    libinput.enable = true;
  };
  # Configure keymap in X11
  console.keyMap = "br-abnt2";
}