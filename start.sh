#!/bin/sh
sed -i "s/<port>8000<\/port>/<port>$PORT<\/port>/" /etc/icecast/icecast.xml
exec icecast -c /etc/icecast/icecast.xml
