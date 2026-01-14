function morning
    mpv --force-window=immediate --ytdl-format=134+140-drc \
    ( \
        python3 -c '
import random
print(random.choice([
    "https://youtu.be/19G8775Qn9s",
    "https://youtu.be/pNRP4_QYmWQ",
    "https://youtu.be/zZSV2NKhytA",
    "https://youtu.be/VIZWx1mKlko",
    "https://youtu.be/8tJmD7MUpYI",
    "https://youtu.be/9g4z0gFlfpA",
    "https://youtu.be/lfbHlWrCAyk",
    "https://youtu.be/4AoKahQ8eYs"
]), end="")' \
    )
end
