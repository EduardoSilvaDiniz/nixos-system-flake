{pkgs, inputs, ...}: {
  programs.hyprland = { 
  	enable = true;
	xwayland.enable = true;
  };
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway";
        user = "greeter";
      };
    };
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

  programs.dconf.profiles.user = {
     databases = [{
       settings = {
         "org/gnome/desktop/interface" = {
           color-scheme = "prefer-dark";
           clock-format = "12h";
           clock-show-weekday = true;
         };
       };
     }];
   };
}
