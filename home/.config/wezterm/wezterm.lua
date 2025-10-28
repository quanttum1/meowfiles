local wezterm = require("wezterm")

return {
	audible_bell = "SystemBeep",
	default_cursor_style = "SteadyBar",
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.5,
	text_background_opacity = 0.5,
	enable_wayland = true,
	default_prog = { "/usr/bin/fish", "-l" },
	font = wezterm.font("Agave Nerd Font Mono"),
	font_size = 18.0,
	keys = {
		{
			key = "N",
			mods = "CTRL|SHIFT",
			action = wezterm.action_callback(function(window, pane)
				local cwd_uri = pane:get_current_working_dir()
				if cwd_uri then
					local cwd = cwd_uri.file_path
					local escaped_cwd = wezterm.shell_quote_arg(cwd)
					os.execute("nohup wezterm start --always-new-process --cwd " .. escaped_cwd .. " >/dev/null 2>&1 &")
				else
					os.execute("nohup wezterm start --always-new-process >/dev/null 2>&1 &")
				end
			end),
		},
	},
}
