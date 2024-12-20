{
  wayland.windowManager.sway = {
    enable = true;

    config = rec {
      modifier = "Mod4";
      terminal = "foot";
      input = {
        "*" = {
          xkb_layout = "br";
        };
      };
    };
  };
}
