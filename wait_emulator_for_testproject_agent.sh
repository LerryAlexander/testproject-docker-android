#!/bin/bash

  boot_completed=false
  while [ "$boot_completed" == false ]; do
    status=$(adb wait-for-device shell getprop sys.boot_completed | tr -d '\r')
    if [ "$status" == "1" ]; then
      boot_completed=true
      echo "android emulator is ready"
      echo "starting testproject agent..."
    else
      echo "waiting for emulator to be ready"
      sleep 1
    fi
  done