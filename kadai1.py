#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 yamato nunomura
import sys

while 1:
    suuti = input("秒数を入力")
    try:
        suuti1 = int(suuti)
        if suuti1 < 0:
            sys.exit()
        else:
            break
    except ValueError:
        sys.exit()

hours = suuti1 // 3600
amarihours = suuti1 % 3600
minutes = amarihours // 60
amariseconds = amarihours % 60

if hours > 0:
    print ("{}時間{}分{}秒".format(hours, minutes, amariseconds))
elif minutes > 0:
      print ("{}分{}秒".format(minutes, amariseconds))
else:
    print ("{}秒".format(amariseconds))
