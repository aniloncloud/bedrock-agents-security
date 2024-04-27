bash
#!/bin/bash

# Set the AWS region
AWS_REGION="us-east-1"

# Get the User Pool ID
WS_USER_POOL_ID=$(aws cognito-idp list-user-pools --max-results 20 --query 'UserPools[?Name==`claims-app-userpool`].Id | [0]' --output text --region $AWS_REGION)

# Get the Cognito Domain
WS_COGNITO_DOMAIN=$(aws cognito-idp describe-user-pool --user-pool-id $WS_USER_POOL_ID --query 'UserPool.Domain' --output text --region $AWS_REGION)

# Get the User Pool Client ID
WS_USER_POOL_CLIENT_ID=$(aws cognito-idp list-user-pool-clients --user-pool-id $WS_USER_POOL_ID --query 'UserPoolClients[0].ClientId' --output text --region $AWS_REGION)

# Get the User Pool ARN
WS_USER_POOL_ARN=$(aws cognito-idp describe-user-pool --user-pool-id $WS_USER_POOL_ID --query 'UserPool.Arn' --output text --region $AWS_REGION)

rm .env
# Create the .env file
echo "AWS_REGION=$AWS_REGION" > .env
echo "WS_USER_POOL_ID=$WS_USER_POOL_ID" >> .env
echo "WS_COGNITO_DOMAIN=$WS_COGNITO_DOMAIN" >> .env
echo "WS_USER_POOL_CLIENT_ID=$WS_USER_POOL_CLIENT_ID" >> .env
echo "WS_USER_POOL_ARN=$WS_USER_POOL_ARN" >> .env