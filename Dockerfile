FROM alpine:latest

RUN apk update && apk add --no-cache icecast mime-types

COPY icecast.xml /etc/icecast/icecast.xml
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8080

CMD ["/start.sh"]
