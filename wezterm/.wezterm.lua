local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- shell program
config.default_prog = { "powershell.exe", "-NoLogo" }
config.term = "xterm-256color"

-- fonts
config.font_size = 12
config.font = wezterm.font 'Agave Nerd Font Mono'
config.default_cursor_style = 'SteadyBar'

-- colors
config.color_scheme = 'Tokyo Night'

-- tabs
config.hide_tab_bar_if_only_one_tab = true
-- config.use_fancy_tab_bar = false

-- window
config.initial_cols = 80
config.window_background_opacity = 0.95
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
