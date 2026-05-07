set -g fish_greeting "Meowwie >w<"

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias rm="trash"
    alias music="mpv ~/Music/ --shuffle --no-audio-display --loop-playlist --input-ipc-server=/tmp/mpvsocket"

    set -Ux EDITOR "nvim"

    # in the future i may factor these out in a function
    # function stream
    #     set url $argv[1]
    #     set args $argv[2..-1]
    #
    #     set opts "--force-window=immediate"
    #
    #     if contains -- --worst $args
    #         set opts $opts "--ytdl-format=worst"
    #     end
    #
    #     if contains -- --cookies $args
    #         set opts $opts "--ytdl-raw-options=cookies-from-browser=firefox"
    #     end
    #
    #     mpv $opts $url
    # end
    # `X-cookies` is needed when YT asks me to comfirm i'm not a bot
    # `X-worst` is needed when my internet is shit, usually it doesn't affect the quality of audio that much
    set -Ux LOFI_URL "https://youtu.be/jfKfPfyJRdk"
    alias lofi="mpv --force-window=immediate $LOFI_URL"
    alias lofi-cookies="mpv --force-window=immediate $LOFI_URL --ytdl-raw-options=cookies-from-browser=firefox"
    alias lofi-worst="mpv --ytdl-format=worst --force-window=immediate $LOFI_URL"
    alias lofi-cookies-worst="mpv --ytdl-format=worst --force-window=immediate $LOFI_URL --ytdl-raw-options=cookies-from-browser=firefox"

    set -Ux RGN_URL "https://youtu.be/lO78hDilSLY"
    alias rgn="mpv --force-window=immediate $RGN_URL"
    alias rgn-cookies="mpv --force-window=immediate $RGN_URL --ytdl-raw-options=cookies-from-browser=firefox"
    alias rgn-worst="mpv --ytdl-format=worst --force-window=immediate $RGN_URL"
    alias rgn-cookies-worst="mpv --ytdl-format=worst --force-window=immediate $RGN_URL --ytdl-raw-options=cookies-from-browser=firefox"

    set -Ux PIANO_URL "https://youtu.be/N0snMcR6aaA"
    alias piano="mpv --force-window=immediate $PIANO_URL"
    alias piano-cookies="mpv --force-window=immediate $PIANO_URL --ytdl-raw-options=cookies-from-browser=firefox"
    alias piano-worst="mpv --ytdl-format=worst --force-window=immediate $PIANO_URL"
    alias piano-cookies-worst="mpv --ytdl-format=worst --force-window=immediate $PIANO_URL --ytdl-raw-options=cookies-from-browser=firefox"

    alias yt-cookies="yt --cookies-from-browser firefox"

    alias neome="python3 ~/src/simple_neome/main.py"
    alias mcal="ncal -M -b"
    alias nv="nvim +'NvimTreeOpen'"

    bind -M default p paste_from_clipboard
    bind -M visual y 'echo (commandline -s) | wl-copy; commandline -f end-selection'
    bind -M default y 'echo (commandline) | wl-copy'

    bind -M insert \ek accept-autosuggestion
    bind -M insert \ej execute
    bind -M default \ek accept-autosuggestion
    bind -M default \ej execute

    alias rmfr="/usr/bin/rm"
    alias sowon-with-alarm="bash ~/.config/fish/commands/sowon-with-alarm.sh"
    alias sowon-till="python3 ~/.config/fish/commands/sowon-till.py"

    __ignore_cd_dotdot
end

alias imgcat="wezterm imgcat"

set -Ux DOTNET_ROOT $HOME/.dotnet
set -gx PATH $PATH $DOTNET_ROOT $DOTNET_ROOT/tools

if [ -f ~/.cargo/env.fish ]
    source ~/.cargo/env.fish
end
