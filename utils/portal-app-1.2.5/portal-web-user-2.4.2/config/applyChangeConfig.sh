#!/bin/bash

BEFORE_CONFIG="../paas-ta-portal-webuser/assets/resources/env/config.json"
AFTER_CONFIG="config.json"
MAIN_JS="../paas-ta-portal-webuser/main.*.js"

BEFORE_FILTER=$(cat ${BEFORE_CONFIG} | tr -d '{'  |tr -d '\r\n' | tr -d '"' | sed -e 's/: /:\"/g' | sed -e 's/,  /\",/g' | sed -e 's/^ *//g' -e 's/ *$//g' | sed -e 's/}/"/g' | sed -e 's/"false"/!1/g' | sed -e 's/"true"/!0/g'| sed -e 's/\//\\\//g' )
AFTER_FILTER=$(cat ${AFTER_CONFIG} | tr -d '{'  |tr -d '\r\n' | tr -d '"' | sed -e 's/: /:\"/g' | sed -e 's/,  /\",/g' | sed -e 's/^ *//g' -e 's/ *$//g' | sed -e 's/}/"/g' | sed -e 's/"false"/!1/g' | sed -e 's/"true"/!0/g'| sed -e 's/\//\\\//g')

echo "====================================================="
echo "BEFORE :: $BEFORE_FILTER"
echo "====================================================="
echo "AFTER  :: $AFTER_FILTER"
echo "====================================================="

CHANGE_CONFIG="'s/${BEFORE_FILTER}/${AFTER_FILTER}/g' ${MAIN_JS}"

echo $CHANGE_CONFIG | xargs sed -i

cp $AFTER_CONFIG $BEFORE_CONFIG

