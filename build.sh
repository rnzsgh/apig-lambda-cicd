#!/bin/bash

LAMBDA_BUCKET=$1
echo $LAMBDA_BUCKET

for d in */ ; do
    d=${d%*/}
    mkdir -p $d/package
    cd $d/package
    pip3 install --no-cache-dir --requirement ../requirements.txt --target ./
    zip -r9 ../$d.zip .
    cd ../
    zip -g $d.zip *.py
    aws s3api put-object --bucket $LAMBDA_BUCKET --key $d.zip --body $d.zip
done

