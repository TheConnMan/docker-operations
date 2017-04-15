#!/bin/sh

# Crontab config
# 0/30 * * * * /path/to/elasticsearch-health.sh <elasticsearch-host> <missd-url>

status=`curl -s http://$1:9200/_cluster/health/.kibana | jq '.status'`

if [ $status = "\"yellow\"" ]; then
  curl -X POST $2
fi
