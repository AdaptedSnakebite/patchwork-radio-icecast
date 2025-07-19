#!/bin/sh

echo "Railway assigned PORT: $PORT"

cp /etc/icecast/icecast.xml /tmp/icecast.xml

# Replace the port 8000 with the Railway assigned port dynamically
sed -i "s/<port>8000<\/port>/<port>$PORT<\/port>/" /tmp/icecast.xml

echo "Starting Icecast on port $PORT (not running as root)"

icecast -c /tmp/icecast.xml -b
