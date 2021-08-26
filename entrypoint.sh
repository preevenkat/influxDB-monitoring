#!/bin/bash
set -eu -o pipefail
export DOCKER_INFLUXDB_INIT_MODE=$DOCKER_INFLUXDB_INIT_MODE
export DOCKER_INFLUXDB_INIT_USERNAME=$DOCKER_INFLUXDB_INIT_USERNAME
export DOCKER_INFLUXDB_INIT_PASSWORD=$DOCKER_INFLUXDB_INIT_PASSWORD
export DOCKER_INFLUXDB_INIT_ORG=$DOCKER_INFLUXDB_INIT_ORG
export DOCKER_INFLUXDB_INIT_BUCKET=$DOCKER_INFLUXDB_INIT_BUCKET
export DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=$DOCKER_INFLUXDB_INIT_ADMIN_TOKEN
export INFLUXD_TLS_CERT=$INFLUXD_TLS_CERT
export INFLUXD_TLS_KEY=$INFLUXD_TLS_KEY
echo $DOCKER_INFLUXDB_INIT_MODE
influx setup --skip-verify --bucket ${DOCKER_INFLUXDB_INIT_ORG} -t ${DOCKER_INFLUXDB_INIT_ADMIN_TOKEN} -o ${DOCKER_INFLUXDB_INIT_ORG} --username="${DOCKER_INFLUXDB_INIT_USERNAME}" --password="${DOCKER_INFLUXDB_INIT_PASSWORD}" --host=http://10.2.5.36:8086 -f