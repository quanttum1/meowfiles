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

    sleep_begin_dt = datetime(now.year, now.month, now.day, *sleep_begin)
    sleep_end_dt = datetime(now.year, now.month, now.day, *sleep_end)

    if now > sleep_begin_dt or now < sleep_end_dt:
        os.system('fullscreen-notification "Go sleep" 10')

    time.sleep(10)
