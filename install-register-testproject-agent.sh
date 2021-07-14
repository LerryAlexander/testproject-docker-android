#!/bin/bash
curl -X GET 'https://drive.google.com/u/0/uc?id=18niRvPDh9C98YCMU4KXOss_jkAdTpvp1&export=download' --output ./TestProject_Agent_2.3.7.sh
printf 'y\nyes\n\nyes\nY' | ./TestProject_Agent_2.3.7.sh
cd /root/testproject/agent/bin
AGENT_UUID=REMOTE_AGENT_$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
sleep 30
./testproject-agent register -a $AGENT_UUID -t $TP_DEV_TOKEN
