#!/bin/sh -x

if [ -z ${NEWRELIC_LICENSE_KEY} ]; then
  exit 0
fi
nrsysmond-config --set license_key=$NEWRELIC_LICENSE_KEY

/etc/init.d/newrelic-sysmond stop
/etc/init.d/newrelic-sysmond start
