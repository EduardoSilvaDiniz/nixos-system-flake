local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
  front_end = "WebGpu",
  color_scheme = "Everforest Dark (Gogh)",
  font_size = 15.0,
  enable_wayland = true,
  hide_mouse_cursor_when_typing = false,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
}

return config
