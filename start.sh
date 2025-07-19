#!/bin/sh
echo "Railway assigned PORT: $PORT"
cp /etc/icecast2/icecast.xml /tmp/icecast.xml
sed -i "s/<port>8000<\/port>/<port>$PORT<\/port>/" /tmp/icecast.xml
echo "Starting Icecast on port $PORT"
exec /usr/bin/icecast2 -c /tmp/icecast.xml
