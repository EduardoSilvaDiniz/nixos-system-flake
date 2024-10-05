local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
	color_scheme = "Gruvbox Dark (Gogh)",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	font_size = 13.0,
	enable_wayland = true,

	tiling_desktop_environments = {
		"X11 LG3D",
		"X11 bspwm",
		"X11 i3",
		"X11 dwm",
		"wayland hyprland",
	},
}

return config
