#!/bin/sh
echo "Railway assigned PORT: $PORT"

# Update port in config
cp /etc/icecast.xml /tmp/icecast.xml
sed -i "s/<port>.*<\/port>/<port>$PORT<\/port>/" /tmp/icecast.xml

echo "Starting Icecast on port $PORT (not running as root)"
icecast -c /tmp/icecast.xml
