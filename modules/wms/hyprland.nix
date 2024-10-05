{
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
}
