#!/bin/sh

echo "Railway assigned PORT: $PORT"

# Set the port dynamically
cp /etc/icecast.xml /tmp/icecast.xml
sed -i "s/<port>.*<\/port>/<port>${PORT}<\/port>/" /tmp/icecast.xml

echo "Starting Icecast on port $PORT"
icecast -c /tmp/icecast.xml
