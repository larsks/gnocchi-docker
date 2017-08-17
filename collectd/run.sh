#!/bin/bash

envtpl --keep-template /etc/collectd/collectd.conf.tpl
exec collectd -f
