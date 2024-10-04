{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  home.configFile = {
    "hypr/hyprland.conf".source = "../../config/hypr/hyprland.conf";
  };
}
