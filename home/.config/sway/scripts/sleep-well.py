from datetime import datetime
import time
import os

sleep_begin = '21:30'
sleep_end = '06:30'

sleep_begin = [int(i) for i in sleep_begin.split(':')]
sleep_end = [int(i) for i in sleep_end.split(':')]

cmd = "swaylock -c 000000"

while True:
    now = datetime.now()

    if now.hour >= sleep_begin[0] and \
        now.minute >= sleep_begin[1]:
        os.system(cmd)

    if now.hour <= sleep_end[0] and \
        now.minute <= sleep_end[1]:
        os.system(cmd)

    time.sleep(10)
