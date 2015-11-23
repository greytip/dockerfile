#!/bin/bash
while true; do
   aws s3 sync --region $AWS_REGION /var/sync s3://$SYNC_S3_BUCKET
   sleep 60
done
