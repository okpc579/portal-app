#!/bin/bash

source variables.yml

# Portal APP folder clean
if [ -d ${PORTALAPPNAME} ]; then
        echo "portal-app folder exists - delete folder"
        rm ${PORTALAPPNAME} -rf
fi

if [ -f ${PORTALAPPNAME}.zip ]; then
        echo "portal-app zip exists - delete zip"
        rm ${PORTALAPPNAME}.zip -rf
fi


# Portal APP template copy
cp ./portal-app-template ./${PORTALAPPNAME} -r

# Portal APP folder version rename
mv ${PORTALAPPNAME}/portal-api ${PORTALAPPNAME}/${PORTAL_API}
mv ${PORTALAPPNAME}/portal-common-api ${PORTALAPPNAME}/${PORTAL_COMMON_API}
mv ${PORTALAPPNAME}/portal-gateway ${PORTALAPPNAME}/${PORTAL_GATEWAY}
mv ${PORTALAPPNAME}/portal-log-api ${PORTALAPPNAME}/${PORTAL_LOG_API}
mv ${PORTALAPPNAME}/portal-registration ${PORTALAPPNAME}/${PORTAL_REGISTRATION}
mv ${PORTALAPPNAME}/portal-storage-api ${PORTALAPPNAME}/${PORTAL_STORAGE_API}
mv ${PORTALAPPNAME}/portal-web-admin ${PORTALAPPNAME}/${PORTAL_WEB_ADMIN}
mv ${PORTALAPPNAME}/portal-web-user ${PORTALAPPNAME}/${PORTAL_WEB_USER}
mv ${PORTALAPPNAME}/portal-ssh ${PORTALAPPNAME}/${PORTAL_SSH}

cd ../

# Gradlew chmod 777
find . -name gradlew -exec chmod 777 {} \;

# portal-api build
cd portal-api
./gradlew clean build

# portal-common-api build
cd ../portal-common-api
./gradlew clean build

# portal-gateway build
cd ../portal-gateway
./gradlew clean build

# portal-log-api build
cd ../portal-log-api
./gradlew clean build

# portal-registration build
cd ../portal-registration
./gradlew clean build

# portal-stroage-api build
cd ../portal-storage-api
./gradlew clean build

# portal-webadmin build
cd ../portal-webadmin
./gradlew clean build

# portal-webuser build
cd ../portal-webuser
npm install
npm run build

# portal-ssh build
cd ../portal-ssh
npm install --production


cd ../utils

# Build file copy

cp ../portal-api/build/libs/paas-ta-portal-api.jar ${PORTALAPPNAME}/${PORTAL_API}
cp ../portal-common-api/build/libs/paas-ta-portal-common-api.jar ${PORTALAPPNAME}/${PORTAL_COMMON_API}
cp ../portal-gateway/build/libs/paas-ta-portal-gateway.jar ${PORTALAPPNAME}/${PORTAL_GATEWAY}
cp ../portal-log-api/build/libs/paas-ta-portal-log-api.jar ${PORTALAPPNAME}/${PORTAL_LOG_API}
cp ../portal-registration/build/libs/paas-ta-portal-registration.jar ${PORTALAPPNAME}/${PORTAL_REGISTRATION}
cp ../portal-ssh/* ${PORTALAPPNAME}/${PORTAL_SSH} -r
cp portal-app-template/portal-ssh/manifest.yml ${PORTALAPPNAME}/${PORTAL_SSH}
cp ../portal-storage-api/build/libs/paas-ta-portal-storage-api.jar ${PORTALAPPNAME}/${PORTAL_STORAGE_API}
cp ../portal-webadmin/build/libs/paas-ta-portal-webadmin.war ${PORTALAPPNAME}/${PORTAL_WEB_ADMIN}
cp ../portal-webuser/dist/paas-ta-portal-webuser ${PORTALAPPNAME}/${PORTAL_WEB_USER} -r

# Portal APP zip

zip -r ${PORTALAPPNAME}.zip ./${PORTALAPPNAME}/*

