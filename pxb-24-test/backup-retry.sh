#!/usr/bin/env bash

#SOCAT_OPTS="TCP-LISTEN:4444,reuseaddr,retry=30"
SOCAT_OPTS=$1

# backing up
#echo "=========================>>>>>>>>>>>>>>>>>> trying to backup again"
socat -u "$SOCAT_OPTS" stdio
