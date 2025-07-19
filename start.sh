#!/bin/sh
# Do the sed replacement as root, then switch to nobody user
sed -i "s/<port>8000<\/port>/<port>$PORT<\/port>/" /etc/icecast/icecast.xml
# Switch to nobody user and start icecast
exec su-exec nobody icecast -c /etc/icecast/icecast.xml
