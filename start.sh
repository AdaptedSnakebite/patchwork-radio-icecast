#!/bin/sh

# Create icecast user and group
addgroup -S icecast && adduser -S -G icecast icecast

# Create logging directory and fix permissions
mkdir -p /logs
chown -R icecast:icecast /logs

# Start Icecast as non-root
exec su-exec icecast icecast2 -c /etc/icecast.xml
