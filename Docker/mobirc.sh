#!/bin/sh

exec /sbin/tini -- perl -Mlib=/usr/local/mobirc/extlib/lib/perl5/ /usr/local/mobirc/mobirc -c /etc/mobirc/config.json
