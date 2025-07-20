#!/bin/bash

# Create a new S3 bucket
aws s3 mb s3://nurillayev-cli-test-july

# List all buckets to confirm creation
aws s3 ls

# Create a simple text file
echo "Hello from AWS CLI" > testfile.txt

# Upload the file to the created bucket
aws s3 cp testfile.txt s3://nurillayev-cli-test-july/

# List the contents of the bucket to verify upload
aws s3 ls s3://nurillayev-cli-test-july/

# Describe EC2 instances in a specific region
aws ec2 describe-instances --region us-east-1
