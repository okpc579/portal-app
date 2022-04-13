#!/bin/bash

source variables.yml

cd ../portal-api
git checkout ${PORTAL_API_COMMIT}

cd ../portal-common-api
git checkout ${PORTAL_COMMON_API_COMMIT}

cd ../portal-gateway
git checkout ${PORTAL_GATEWAY_COMMIT}

cd ../portal-log-api
git checkout ${PORTAL_REGISTRATION_COMMIT}

cd ../portal-registration
git checkout ${PORTAL_REGISTRATION_COMMIT}

cd ../portal-ssh
git checkout ${PORTAL_SSH_COMMIT}

cd ../portal-storage-api
git checkout ${PORTAL_STORAGE_API_COMMIT}

cd ../portal-webadmin
git checkout ${PORTAL_WEB_ADMIN_COMMIT}

cd ../portal-webuser
git checkout ${PORTAL_WEB_USER_COMMIT}

cd ../utils
