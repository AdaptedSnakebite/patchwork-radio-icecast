#!/bin/sh

echo "Railway assigned PORT: $PORT"

# Copy config file to temp folder so we can edit it
cp /etc/icecast/icecast.xml /tmp/icecast.xml

# Replace default port with Railway assigned port
sed -i "s/<port>8080<\/port>/<port>$PORT<\/port>/" /tmp/icecast.xml

echo "Starting Icecast on port $PORT (not running as root)"
exec icecast -c /tmp/icecast.xml -b -n nobody
