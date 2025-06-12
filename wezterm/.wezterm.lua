local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- detect platform
local target = wezterm.target_triple

-- conditional shell
if target:find("windows") then
  config.default_prog = { "powershell.exe", "-NoLogo" }
elseif target:find("darwin") then
  config.default_prog = { "/bin/zsh", "-l" }
end

-- fonts
config.font_size = 12
config.font = wezterm.font 'Agave Nerd Font Mono'
config.default_cursor_style = 'SteadyBar'

-- colors
config.color_scheme = 'Tokyo Night'

-- tabs
config.tab_max_width = 1000
--config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true

-- window
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.initial_cols = 80
config.window_background_opacity = 0.95
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
