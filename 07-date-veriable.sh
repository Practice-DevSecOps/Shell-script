#!/bin/bash

#DATE=$(DATE)
START_TIME=$(date)

END_TIME=$(date)

sleep 3

TOTAL_TIME=$(( $(date -d "$END_TIME" +%s) - $(date -d "$START_TIME" +%s) ))
echo "Time stamp executed: $DATE"

#COMMAND date +%Y-%m-%d_%H:%M:%S
#above command will give date in specific format after date tou can give specific
