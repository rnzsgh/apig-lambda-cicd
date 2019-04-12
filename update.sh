#!/bin/bash

. stack.config

aws cloudformation update-stack \
  --stack-name $STACK_NAME \
  --template-body file://api-gateway.cfn.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=CertificateArn,ParameterValue=$CERT_ARN \
  ParameterKey=DomainName,ParameterValue=$DOMAIN \
  ParameterKey=EndpointType,ParameterValue=$TYPE \
  ParameterKey=HostedZoneName,ParameterValue=$HOSTED_ZONE \
  ParameterKey=GitSourceRepo,ParameterValue=$GIT_REPO \
  ParameterKey=GitBranch,ParameterValue=$GIT_BRANCH \
  ParameterKey=GitHubToken,ParameterValue=$GITHUB_TOKEN \
  ParameterKey=GitHubUser,ParameterValue=$GITHUB_USER \
  ParameterKey=LambdaReleaseBucketName,ParameterValue=$LAMBDA_BUCKET

