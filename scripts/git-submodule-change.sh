#!/bin/bash

source variables.yml
PORTAL_API_VERSION=v$(echo $PORTAL_API | cut -d '-' -f 3)
PORTAL_COMMON_API_VERSION=v$(echo $PORTAL_COMMON_API | cut -d '-' -f 4)
PORTAL_GATEWAY_VERSION=v$(echo $PORTAL_GATEWAY | cut -d '-' -f 3)
PORTAL_LOG_API_VERSION=v$(echo $PORTAL_LOG_API | cut -d '-' -f 4)
PORTAL_REGISTRATION_VERSION=v$(echo $PORTAL_REGISTRATION | cut -d '-' -f 3)
PORTAL_STORAGE_API_VERSION=v$(echo $PORTAL_STORAGE_API | cut -d '-' -f 4)
PORTAL_WEB_ADMIN_VERSION=v$(echo $PORTAL_WEB_ADMIN | cut -d '-' -f 4)
PORTAL_WEB_USER_VERSION=v$(echo $PORTAL_WEB_USER | cut -d '-' -f 4)
PORTAL_SSH_VERSION=v$(echo $PORTAL_SSH | cut -d '-' -f 3)

cd ../portal-api
git checkout ${PORTAL_API_VERSION}

cd ../portal-common-api
git checkout ${PORTAL_COMMON_API_VERSION}

cd ../portal-gateway
git checkout ${PORTAL_GATEWAY_VERSION}

cd ../portal-log-api
git checkout ${PORTAL_LOG_API_VERSION}

cd ../portal-registration
git checkout ${PORTAL_REGISTRATION_VERSION}

cd ../portal-ssh
git checkout ${PORTAL_SSH_VERSION}

cd ../portal-storage-api
git checkout ${PORTAL_STORAGE_API_VERSION}

cd ../portal-webadmin
git checkout ${PORTAL_WEB_ADMIN_VERSION}

cd ../portal-webuser
git checkout ${PORTAL_WEB_USER_VERSION}

cd ../scripts

