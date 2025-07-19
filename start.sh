#!/bin/sh
echo "Railway assigned PORT: $PORT"
cp /etc/icecast/icecast.xml /tmp/icecast.xml
sed -i "s/<port>8000<\/port>/<port>$PORT<\/port>/" /tmp/icecast.xml
sed -i '/<changeowner>/,/<\/changeowner>/d' /tmp/icecast.xml
echo "Starting Icecast on port $PORT"
icecast -c /tmp/icecast.xml
