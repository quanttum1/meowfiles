#!/usr/bin/env python3
import subprocess
import json

result = subprocess.run(
    ["slurp"],
    capture_output=True,
    text=True
)

output = result.stdout

if output == '':
    monitors = json.loads(subprocess.run(
        ["swaymsg", "-t", "get_outputs"],
        capture_output=True,
        text=True
    ).stdout)

    for monitor in monitors:
        if monitor["focused"]:
            r = monitor["rect"]
            print(f"{r['x']},{r['y']} {r['width']}x{r['height']}")
else:
    print(output)
