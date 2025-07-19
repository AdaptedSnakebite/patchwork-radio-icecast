#!/bin/sh
echo "Railway assigned PORT: $PORT"

cp /etc/icecast/icecast.xml /tmp/icecast.xml

# Replace the port in the config file with the Railway port
sed -i "s/<port>8080<\/port>/<port>$PORT<\/port>/" /tmp/icecast.xml

# Replace passwords with env variables (or default)
sed -i "s/<source-password>.*<\/source-password>/<source-password>${SOURCE_PASS:-hackme}<\/source-password>/" /tmp/icecast.xml
sed -i "s/<admin-password>.*<\/admin-password>/<admin-password>${ADMIN_PASS:-admin123}<\/admin-password>/" /tmp/icecast.xml

echo "Starting Icecast on port $PORT (not running as root)"
icecast -c /tmp/icecast.xml -b
