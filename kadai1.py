#!/usr/bin/python3

suuti = input("秒数を入力")
suuti1 = int(suuti)
hours = suuti1 // 3600
amarihours = suuti1 % 3600
minutes = amarihours // 60
amariseconds = amarihours % 60

if hours > 0:
    print ("{}時間{}分{}秒".format(hours, minutes, amariseconds))
elif  minutes > 0:
      print ("{}分{}秒".format(minutes, amariseconds))
else:
    print ("{}秒".format(amariseconds))
