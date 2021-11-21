#!/bin/sh

sleep 10

adduser -S mobirc
addgroup -S mobirc

chown -R mobirc:mobirc /usr/local/mobirc
chown -R mobirc:mobirc /etc/mobirc

exec su-exec mobirc:mobirc /bin/sh /usr/local/bin/mobirc.sh
