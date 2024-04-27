

process.env.VUE_APP_AWS_REGION,

# aws cognito-idp admin-update-user-attributes --user-pool-id us-east-1_cikmIqAM6 --username claims-app-adjuster --user-attributes Name="email_verified",Value="true"
aws cognito-idp admin-set-user-password --user-pool-id $WS_USER_POOL_ID --username claims-app-adjuster --password Examp1le_new_password --permanent
aws cognito-idp admin-set-user-password --user-pool-id $WS_USER_POOL_ID --username claims-app-admin	 --password Examp1le_new_password --permanent

CloudWatch logs - Full request and response logs

fix url in frontend - api gateway url




delete stage

 Invalid permissions on Lambda function - claimsinvokebedrockagent
 
 enable CORS from api gateway console**
 
 
export bedrockLayerArn=$(aws lambda list-layer-versions --layer-name bedrock-layer --region us-east-1 --query 'max_by(LayerVersions, &Version).LayerVersionArn' --output text)

sam deploy --guided --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND CAPABILITY_NAMED_IAM --parameter-overrides "ParameterKey=bedrockLayerArn,ParameterValue=${bedrockLayerArn}" --no-fail-on-empty-changeset
 
export AWS_REGION = "us-east-1"
export WS_USER_POOL_ID=$(aws cognito-idp list-user-pools --max-results 20 --query 'UserPools[?Name==`claims-app-userpool`].Id | [0]' --output text)
export WS_COGNITO_DOMAIN=$(aws cognito-idp describe-user-pool --user-pool-id $WS_USER_POOL_ID --query 'UserPool.Domain' --output text)  
export WS_USER_POOL_CLIENT_ID=$(aws cognito-idp list-user-pool-clients --user-pool-id $WS_USER_POOL_ID --query 'UserPoolClients[0].ClientId' --output text)
export WS_USER_POOL_ARN=$(aws cognito-idp describe-user-pool --user-pool-id $WS_USER_POOL_ID --query 'UserPool.Arn' --output text)

env | grep ^WS_ | sed -e 's/^/export /' > ws-env.sh

aws cognito-idp admin-set-user-password --user-pool-id $WS_USER_POOL_ID --username claims-app-adjuster --password Examp1le_new_password --permanent
aws cognito-idp admin-set-user-password --user-pool-id $WS_USER_POOL_ID --username claims-app-admin	 --password Examp1le_new_password --permanent



