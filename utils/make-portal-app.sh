#!/bin/bash

source variables.yml

if [ -d portal-app-${PORTAL_APP_VERSION} ]; then
        echo "portal-app folder exists - delete folder"
        ## existing portal-app directory delete
	rm portal-app-${PORTAL_APP_VERSION} -rf
fi

cp ./portal-app-template ./portal-app-${PORTAL_APP_VERSION} -r

mv portal-app-${PORTAL_APP_VERSION}/portal-api portal-app-${PORTAL_APP_VERSION}/portal-api-${PORTAL_API_VERION}
mv portal-app-${PORTAL_APP_VERSION}/portal-common-api portal-app-${PORTAL_APP_VERSION}/portal-common-api-${PORTAL_COMMON_API_VERSION}
mv portal-app-${PORTAL_APP_VERSION}/portal-gateway portal-app-${PORTAL_APP_VERSION}/portal-gateway-${PORTAL_GATEWAY_VERSION}
mv portal-app-${PORTAL_APP_VERSION}/portal-log-api portal-app-${PORTAL_APP_VERSION}/portal-log-api-${PORTAL_LOG_API_VERSION}
mv portal-app-${PORTAL_APP_VERSION}/portal-registration portal-app-${PORTAL_APP_VERSION}/portal-registration-${PORTAL_REGISTRATION_VERSION}
mv portal-app-${PORTAL_APP_VERSION}/portal-ssh portal-app-${PORTAL_APP_VERSION}/portal-ssh-${PORTAL_SSH_VERSION}
mv portal-app-${PORTAL_APP_VERSION}/portal-storage-api portal-app-${PORTAL_APP_VERSION}/portal-storage-api-${PORTAL_STORAGE_API_VERSION}
mv portal-app-${PORTAL_APP_VERSION}/portal-web-admin portal-app-${PORTAL_APP_VERSION}/portal-web-admin-${PORTAL_WEB_ADMIN_VERSION}
mv portal-app-${PORTAL_APP_VERSION}/portal-web-user portal-app-${PORTAL_APP_VERSION}/portal-web-user-${PORTAL_WEB_USER_VERION}
