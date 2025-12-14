#!/usr/bin/env fish

while true
    curl 'v2.wttr.in' > /tmp/weather.txt
    sleep 300
end
