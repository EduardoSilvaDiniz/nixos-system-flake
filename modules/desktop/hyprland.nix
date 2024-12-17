{pkgs, ...}: {
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  programs.hyprland.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway";
        user = "greeter";
      };
    };
  };

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  xdg = {
    enable = true;
    configFile."hypr" = {
      source = ../../config/hypr;
    };
  };
  home.packages = with pkgs; [
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
    pulseaudio
    grim
    slurp
    wl-clipboard-rs
    imv
    hyprshot
    nwg-look
    rose-pine-cursor
    glib
    nwg-panel
    kdePackages.dolphin
    greetd.tuigreet
  ];
}
