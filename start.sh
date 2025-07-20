#!/bin/bash

addgroup --system icecast
adduser --system --ingroup icecast icecast

mkdir -p /logs
chown -R icecast:icecast /logs

exec su -s /bin/sh icecast -c "icecast2 -c /etc/icecast.xml"
