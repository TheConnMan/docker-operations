#!/bin/sh

# Crontab config
# 0 1 * * * /path/to/mysql-backup.sh <mysql-container> <filename> <s3-bucket/folder> <missd-url>

filename=`date +%H-%M-%S`-$2.sql
docker exec $1 sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > $filename
location=s3://$3/`date +%Y/%m/%d/`
/usr/local/bin/aws s3 cp $filename $location
rm $filename

curl -X POST $4

