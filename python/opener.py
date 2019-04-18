#!/usr/bin/env python3

import sys
import re
import os

regex = re.compile(r"http.*")

for line in sys.stdin:
    print(line, end="")
    if ("pull/new" in line):
      match = regex.search(line)
      os.system(f'open {match.group(0)}')

