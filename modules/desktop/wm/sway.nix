{
  wayland.windowManager.sway = {
    enable = true;
    config = {
      modifier = "Mod4";
      terminal = "foot";

      input = {
        "*" = {
          xkb_layout = "br";
        };
        "1133:16469:Logitech_Wireless_Mouse" = {
              accel_profile = "flat";
              pointer_accel  = "-0.1";
        };
        "type:touchpad" = {
          tap = "enabled";
        };
      };
    };
  };
}
