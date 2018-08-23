#!/bin/sh

# Wait for kibana to come up, then run some required startup
# commands to # configure the instance.
#
# This script looks for /opt/setup-kibana.sh to exist - you are
# expected to mount this file.

if [ -f /opt/setup-kibana.sh ]
then
    exec /opt/wait-for-it.sh -h localhost -p 5601 -- sh /opt/setup-kibana.sh &
fi
exec $@
