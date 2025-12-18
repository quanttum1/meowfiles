#!/usr/bin/env fish

while true
    curl 'wttr.in' > /tmp/weather.txt
    sleep 300
end
