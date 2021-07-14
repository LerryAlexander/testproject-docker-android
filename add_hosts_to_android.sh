#!/bin/bash
cd /${ANDROID_HOME}/emulator
emulator_names=$(./emulator -list-avds)
emulator=( $emulator_names )
echo $emulator_names
./emulator -avd $1 -writable-system &
adb wait-for-device shell 'while [[ -z $(getprop sys.boot_completed) ]]; do sleep 1; done;'
cd /${ANDROID_HOME}/platform-tools
adb root
adb remount
adb push hosts /system/etc/hosts
adb reboot
