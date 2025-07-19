FROM ubuntu:22.04

RUN apt-get update && apt-get install -y icecast2

# Create icecast user and group
RUN groupadd -r icecast && useradd -r -g icecast icecast

# Copy the icecast config
COPY icecast.xml /etc/icecast.xml

# Create logs dir and give ownership to icecast user
RUN mkdir -p /icecast/logs && chown -R icecast:icecast /icecast

USER icecast

EXPOSE 8080

CMD ["icecast2", "-c", "/etc/icecast.xml"]
