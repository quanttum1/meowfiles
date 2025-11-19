set -g fish_greeting "Meowwie >w<"

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias rm="trash"
    alias music="mpv ~/Music/ --shuffle --no-audio-display --loop-playlist --input-ipc-server=/tmp/mpvsocket"

    set -Ux lofi_URL "https://youtu.be/jfKfPfyJRdk"
    alias lofi="mpv $lofi_URL"
    alias lofi-cookies="mpv $lofi_URL --ytdl-raw-options=cookies-from-browser=firefox"

    set -Ux RGN_URL "https://youtu.be/aTiTRB4Pr-8"
    alias rgn="mpv $RGN_URL"
    alias rgn-cookies="mpv $RGN_URL --ytdl-raw-options=cookies-from-browser=firefox"

    alias good-girl="mpv ~/assets/good-girl.webm"

    # These two are for "yt" function if cookies are needed
    set -Ux WITH "--cookies-from-browser"
    set -Ux COOKIES "firefox"

    alias neome="python3 ~/src/simple_neome/main.py"
    alias mcal="ncal -M -b"
    alias nv="nvim +'NvimTreeOpen'"

    bind -M default p paste_from_clipboard
    bind -M visual y 'echo (commandline -s) | wl-copy; commandline -f end-selection'
    bind -M default y 'echo (commandline) | wl-copy'

    alias rmfr="bash ~/.config/fish/commands/rmfr.sh"
    alias sowon-with-alarm="bash ~/.config/fish/commands/sowon-with-alarm.sh"

    __ignore_cd_dotdot
end

alias imgcat="wezterm imgcat"

set -Ux DOTNET_ROOT $HOME/.dotnet
set -gx PATH $PATH $DOTNET_ROOT $DOTNET_ROOT/tools

source ~/.cargo/env.fish
