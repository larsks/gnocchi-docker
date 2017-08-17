#!/bin/bash
set -e

envtpl --keep-template /etc/collectd/collectd.conf.tpl
exec collectd -f
