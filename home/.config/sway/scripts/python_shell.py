from IPython.terminal.embed import InteractiveShellEmbed

shell = InteractiveShellEmbed(show_banner=False)
shell.prompt_includes_vi_mode = True
shell.show_banner = lambda: ""
shell.ask_yes_no = lambda a, b, c: True
shell.editing_mode = 'vi'
shell()

