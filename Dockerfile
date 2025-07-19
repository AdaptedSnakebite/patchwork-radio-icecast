FROM alpine:latest

RUN apk update && apk add --no-cache icecast

COPY mime.types /etc/mime.types
COPY icecast.xml /etc/icecast/icecast.xml
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
