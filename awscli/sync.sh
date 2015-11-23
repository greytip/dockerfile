#!/bin/bash
echo "Syncing to bucket $SYNC_S3_BUCKET using ID: $AWS_ACCESS_KEY_ID"

trap "exit" SIGHUP SIGINT SIGTERM

while true; do
   aws s3 sync --region $AWS_REGION /var/sync s3://$SYNC_S3_BUCKET
   sleep 60
done
