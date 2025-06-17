#!/bin/bash

# Create S3 bucket
aws --endpoint-url=http://localhost:4566 s3 mb s3://my-local-bucket

# Package Lambda function
zip function.zip lambda_function.py

# Deploy Lambda
aws --endpoint-url=http://localhost:4566 lambda create-function \
  --function-name my-function \
  --runtime python3.8 \
  --handler lambda_function.handler \
  --role arn:aws:iam::000000000000:role/lambda-ex \
  --zip-file fileb://function.zip
