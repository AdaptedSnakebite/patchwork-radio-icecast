#!/bin/sh
# Ensure Icecast is started by non-root user
exec su-exec nobody icecast -c /etc/icecast.xml
