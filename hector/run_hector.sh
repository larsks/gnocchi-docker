#!/bin/sh

: ${GNOCCHI_URL:=http://gnocchi-api:8041}
: ${GNOCCHI_INSTANCE_NAME:=bugzilla}
: ${HECTOR_INTERVAL:=1800}

hector-gnocchi -f /etc/hector/config.json -v \
	--bugzilla-url "https://bugzilla.redhat.com" \
	--bugzilla-username "$BUGZILLA_USERNAME" \
	--bugzilla-password "$BUGZILLA_PASSWORD" \
	--gnocchi-username admin \
	--gnocchi-url "$GNOCCHI_URL" \
	--gnocchi-instance-name "$GNOCCHI_INSTANCE_NAME" \
	--interval "$HECTOR_INTERVAL"
