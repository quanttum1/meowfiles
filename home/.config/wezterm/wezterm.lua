local wezterm = require("wezterm")

local fonts = {
	wezterm.font_with_fallback({ "Agave Nerd Font" }),
	wezterm.font_with_fallback({ "Noto Sans Mono", "nasin-nanpa", "Agave Nerd Font" }),
}

local font_index = 1

wezterm.on("cycle-font", function(window, _)
	font_index = font_index % #fonts + 1

	window:set_config_overrides({
		font = fonts[font_index],
	})
end)

return {
	audible_bell = "SystemBeep",
	default_cursor_style = "SteadyBar",
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.5,
	text_background_opacity = 0.5,
	enable_wayland = true,
	default_prog = { "/usr/bin/fish", "-l" },
	font = wezterm.font("Agave Nerd Font"),
	font_size = 17.0,
	keys = {
		{
			key = "S",
			mods = "CTRL|SHIFT",
			action = wezterm.action.EmitEvent("cycle-font"),
		},
	},
}
