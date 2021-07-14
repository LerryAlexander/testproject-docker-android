#!/bin/bash

if [ $(echo "$MOCKSERVER" |tr [:upper:] [:lower:]) = "true" ]; then
  echo MOCKSERVER is $MOCKSERVER, will verify whether enable proxy on emulator is needed or not
  docker exec $ANDROID_EMULATOR /bin/bash -c "cd /testproject-resources && ./wait_emulator_for_testproject_agent.sh && ./enable-proxy-on-emulator.sh && ./install-register-testproject-agent.sh"
else
  echo MOCKSERVER is $MOCKSERVER, running emulator with no mocks
  docker exec $ANDROID_EMULATOR /bin/bash -c  "cd /testproject-resources && ./wait_emulator_for_testproject_agent.sh && ./install-register-testproject-agent.sh"
fi
