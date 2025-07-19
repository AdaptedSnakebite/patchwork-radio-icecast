FROM alpine:latest

RUN apk update && apk add --no-cache icecast

COPY icecast.xml /etc/icecast/icecast.xml
COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
