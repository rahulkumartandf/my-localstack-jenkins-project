#!/bin/bash
aws --endpoint-url=http://localhost:4566 lambda invoke \
  --function-name my-function output.json
cat output.json
