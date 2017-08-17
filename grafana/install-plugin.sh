#!/bin/sh

set -e
set -x

: "${GF_PATHS_PLUGINS:=/var/lib/grafana/plugins}"
: "${GF_PLUGIN_REPO:=https://github.com/gnocchixyz/grafana-gnocchi-datasource}"
: "${GF_PLUGIN_BRANCH:=master}"

mkdir -p ${GF_PATHS_PLUGINS}
cd ${GF_PATHS_PLUGINS}

# ensure we have the latest plugin
rm -rf gnocchixyz-gnocchi-datasource
git clone -b ${GF_PLUGIN_BRANCH} ${GF_PLUGIN_REPO} \
	gnocchixyz-gnocchi-datasource
