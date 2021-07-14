#!/bin/bash

docker exec $ANDROID_EMULATOR bash "cd $ANDROID_HOME/platform-tools/ && \
                                      adb shell 'screenrecord /sdcard/video.mp4 --verbose' &> /testproject-resources/simulator-video/logs.txt & disown && \
                                      adb shell 'screencap -p /sdcard/screen.png' &> /testproject-resources/simulator-video/logs.txt & disown"