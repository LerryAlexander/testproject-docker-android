#!/bin/bash

echo Downloading and installing apk on the android emulator
docker exec $ANDROID_EMULATOR /bin/bash -c "cd /testproject-resources && curl -X GET 'here_the_url_to_download_an_example_apk' --output $PWD/android.apk && adb install android.apk"