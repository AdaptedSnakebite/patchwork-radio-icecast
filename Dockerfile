FROM alpine:latest

RUN apk update && apk add --no-cache icecast

# Create directories with correct permissions
RUN mkdir -p /var/log/icecast /usr/share/icecast/web /usr/share/icecast/admin
RUN touch /var/log/icecast/access.log /var/log/icecast/error.log
RUN chmod -R 777 /var/log/icecast

COPY icecast.xml /etc/icecast.xml
COPY mime.types /etc/mime.types
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 8080

CMD ["/start.sh"]
