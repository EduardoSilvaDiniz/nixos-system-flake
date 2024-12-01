local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
	color_scheme = "Everforest Dark (Gogh)",
	font_size = 13.0,
	enable_wayland = true,
  hide_mouse_cursor_when_typing = false,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	tiling_desktop_environments = {
		"X11 LG3D",
		"X11 bspwm",
		"X11 i3",
		"X11 dwm",
		"wayland hyprland",
	},
}

return config
