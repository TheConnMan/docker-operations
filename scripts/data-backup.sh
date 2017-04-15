#!/bin/sh

# Crontab config
# 0 1 * * * /path/to/data-backup.sh <data-folder> <filename> <s3-bucket/folder> <missd-url>

filename=`date +%H-%M-%S`-$2.zip
zip -rq $filename $1
location=s3://$3/`date +%Y/%m/%d/`
/usr/local/bin/aws s3 cp $filename $location
rm $filename

curl -X POST $4
