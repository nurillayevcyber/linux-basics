#!/bin/bash

# Create a new S3 bucket
aws s3 mb s3://nurillayev-cli-advanced

# List all buckets
aws s3 ls

# Create a test file locally
echo "Advanced file for AWS CLI testing" > report.txt

# Upload the file to S3
aws s3 cp report.txt s3://nurillayev-cli-advanced/

# List contents in the bucket
aws s3 ls s3://nurillayev-cli-advanced/

# Move the file to a subfolder
aws s3 mv s3://nurillayev-cli-advanced/report.txt s3://nurillayev-cli-advanced/reports/report.txt

# Download the file back to local machine
aws s3 cp s3://nurillayev-cli-advanced/reports/report.txt ./downloaded_report.txt

# Remove the file from S3
aws s3 rm s3://nurillayev-cli-advanced/reports/report.txt

# Delete the bucket with all contents
aws s3 rb s3://nurillayev-cli-advanced --force
