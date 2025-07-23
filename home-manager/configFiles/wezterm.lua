-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
config.default_prog = { 'bash' }
-- This is where you actually apply your config choices
config.font_size = 10
--config.color_scheme = "Catppuccin Mocha (Gogh)"
--config.color_scheme = "3024"
--config.color_scheme = "Brogrammer (Gogh)"
--config.color_scheme = "Afterglow"
--config.color_scheme = "Andromeda"
config.color_scheme = "Bamboo Multiplex"
--config.color_scheme = "Dark Pastel (Gogh)"
config.initial_rows = 32
config.initial_cols = 122

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.80
config.enable_wayland = false   -- Uncomment for WezTerm support on Hyprland.

config.keys = {
  { 
    key = "s", mods = "CTRL", 
      action = wezterm.action.SplitPane { 
        direction = "Down", 
        size = { Percent = 50 }, 
    },
  },
}

-- and finally, return the configuration to wezterm
return config
