ydotool key ctrl+a
ydotool key ctrl+c
wl-paste | perl -pe 'chomp if eof' /dev/stdin | sitelen-ucsur | wl-copy
ydotool key ctrl+v

