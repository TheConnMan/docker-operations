# Docker Operations

Useful operations scripts used for disk checks, backups, and health checks. Checks heavily use [Miss.d](https://github.com/TheConnMan/missd) to send notifications when checks fail.

## Scripts

- **Data Backup** - Backup a local folder to an S3 bucket
- **DF Warning** - Set up a disk free check to warn when a disk is filling up
- **Elasticsearch Health** - Check the health of a single Elasticsearch node's Kibana index
- **Stopped Containers** - Check for exited Docker containers
