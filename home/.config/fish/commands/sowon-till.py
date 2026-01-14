from datetime import datetime
import sys
import os

def main(args):
    hour = int(args[1].split(':')[0])
    minute = int(args[1].split(':')[1])

    now = datetime.now()
    till = datetime(now.year, now.month, now.day, hour, minute)

    assert till > now
    seconds_left = (till - now).total_seconds()
    os.system(f'bash ~/.config/fish/commands/sowon-with-alarm.sh {seconds_left}')

if __name__ == "__main__":
    main(sys.argv)
