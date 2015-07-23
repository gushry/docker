#!/bin/sh -x

if [ -n ${NEWRELIC_LICENSE_KEY} ]; then
  nrsysmond-config --set license_key=$NEWRELIC_LICENSE_KEY

  /etc/init.d/newrelic-sysmond stop
  /etc/init.d/newrelic-sysmond start
fi

exec "$@"
