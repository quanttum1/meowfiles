function yt
    yt-dlp $argv -o - | mpv --force-window=immediate - --speed=1.46 --profile=fast --hwdec=auto
end
