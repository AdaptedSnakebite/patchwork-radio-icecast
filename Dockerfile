FROM alpine:latest

RUN apk update && apk add --no-cache icecast

# Create a non-root user
RUN adduser -D -H -u 1000 icecastuser

# Create required directories
RUN mkdir -p /var/log/icecast /usr/share/icecast/web /usr/share/icecast/admin

COPY icecast.xml /etc/icecast.xml
COPY start.sh /start.sh
COPY mime.types /etc/mime.types

RUN chmod +x /start.sh

USER icecastuser

EXPOSE 8080

CMD ["/start.sh"]
