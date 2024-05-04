import cognitojwt

def verifyJWT_getUserInfo(token, region, userPoolId):
    print("in get_user_info function")
    """
    Validate JWT claims & retrieve user identifier along with additional claims
    """
    try:
        verified_user = cognitojwt.decode(
            token, region, userPoolId
        )
    except (cognitojwt.CognitoJWTException, ValueError) as error:
        print.error(f"JWT validation error: {error}")
        return {}
    print.info(f"verified_user: {verified_user}")
    user_info = {
        "username": verified_user.get("cognito:username"),
        "region": verified_user.get("custom:region"),
        "role": verified_user.get("custom:role")
    }

    print(f"user_info: {user_info}")

    return user_info