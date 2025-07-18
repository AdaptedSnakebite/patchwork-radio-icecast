FROM alpine:latest
RUN apk add --no-cache icecast
COPY icecast.xml /etc/icecast/icecast.xml
EXPOSE 8000
USER nobody
CMD ["icecast", "-c", "/etc/icecast/icecast.xml"]
