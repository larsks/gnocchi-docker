#!/bin/sh

set -e
set -x

: "${GF_PATHS_PLUGINS:=/var/lib/grafana/plugins}"
mkdir -p ${GF_PATHS_PLUGINS}
cd ${GF_PATHS_PLUGINS}

git clone -b feature/names \
	https://github.com/larsks/grafana-gnocchi-datasource \
	gnocchixyz-gnocchi-datasource
