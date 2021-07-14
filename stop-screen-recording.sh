#!/bin/bash

docker exec $ANDROID_EMULATOR bash "cd $ANDROID_HOME/platform-tools/ && \
                                      adb shell 'killall -INT screenrecord' && \
                                      sleep 10 && \
                                      $ANDROID_HOME/platform-tools/adb pull /sdcard/video.mp4 /testproject-resources/simulator-video/video.mp4 && \
                                      adb pull /sdcard/screen.png /testproject-resources/simulator-video/ && \
                                      $ANDROID_HOME/platform-tools/adb shell 'screencap -p /sdcard/screen2.png' &> /testproject-resources/simulator-video/logs.txt & disown && \
                                      adb pull /sdcard/screen2.png /testproject-resources/simulator-video/"