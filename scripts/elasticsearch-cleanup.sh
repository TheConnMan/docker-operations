#!/bin/sh

# Crontab config
# 0 1 * * * /path/to/df-warning.sh </path/to/elasticsearch/data> <index-lifetime-days> <elasticsearch-container-name> <missd-url>

rm -rf `find $1/nodes/0/indices/* -maxdepth 0 -type d -mtime +$2`
docker restart $3

curl -X POST $4
