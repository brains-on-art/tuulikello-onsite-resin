#!/usr/bin/python

import os
import time
import picamera
import requests

with picamera.PiCamera(sensor_mode=2, resolution=(3280,2464)) as camera:
    # Camera warm-up time
    time.sleep(1)
    # camera.resolution = (1920, 1080)
    while True:
        camera.capture('/data/image.jpg', quality=10)

        try:
            files = {'image': open('/data/image.jpg', 'rb')}
            r = requests.post(os.environ['REMOTE_URL'], files=files)
            print(r)
        except Exception as e:
            print(e)
        time.sleep(3)
