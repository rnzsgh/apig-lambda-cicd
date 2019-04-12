#!/bin/bash

LAMBDA_BUCKET=$1
STACK_NAME=$2

for d in */ ; do
    d=${d%*/}
    aws lambda update-function-code --function-name $STACK_NAME-$d --s3-bucket $LAMBDA_BUCKET --s3-key $d.zip --publish
done

