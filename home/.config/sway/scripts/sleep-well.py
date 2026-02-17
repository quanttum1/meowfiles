from datetime import datetime
import time
import os

sleep_prepare = '21:00'
sleep_begin = '21:30'
sleep_end = '06:30'

sleep_prepare = [int(i) for i in sleep_begin.split(':')]
sleep_begin = [int(i) for i in sleep_begin.split(':')]
sleep_end = [int(i) for i in sleep_end.split(':')]

shown_prepare = False

while True:
    now = datetime.now()

    sleep_prepare = datetime(now.year, now.month, now.day, *sleep_prepare)
    sleep_begin = datetime(now.year, now.month, now.day, *sleep_begin)
    sleep_end = datetime(now.year, now.month, now.day, *sleep_end)

    if now > sleep_prepare and not shown_prepare:
        os.system('fullscreen-notification "Prepare for sleep" 10')
        shown_prepare = True

    if now > sleep_begin or now < sleep_end:
        os.system('fullscreen-notification "Go sleep" 10')

    if now > sleep_end and now < sleep_prepare:
        shown_prepare = False

    time.sleep(10)
