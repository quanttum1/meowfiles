function yt
    yt-dlp $argv -o - | mpv - --speed=1.46
end
