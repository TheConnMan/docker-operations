#!/bin/sh

# Crontab config
# 0/30 * * * * /path/to/df-warning.sh </drive/name> <threshold> <missd-url>

diskuse=`df -hl $1 | awk '{ print $5 }' | tail -n 1 | sed 's/%//'`

if [ $diskuse -le $2 ]; then
  curl -X POST $3
fi
