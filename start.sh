#!/bin/sh

# Run Icecast in foreground with config file
exec icecast -n -c /etc/icecast.xml
