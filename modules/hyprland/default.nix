{
  config,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland = {
    settings = {};
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
    systemd.enable = true;
  };
}
