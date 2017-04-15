#!/bin/sh

# Crontab config
# */30 * * * * /path/to/stopped-containers.sh <missd-url>

count=`docker ps -f "status=exited" | wc -l`
if [ "$count" -eq "1"" ]; then
  curl -X POST $2
fi
