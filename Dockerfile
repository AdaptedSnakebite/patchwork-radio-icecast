FROM alpine:latest

# Install Icecast and tools
RUN apk update && \
    apk add icecast su-exec && \
    mkdir -p /etc/icecast && \
    mkdir -p /logs

# Copy files
COPY icecast.xml /etc/icecast.xml
COPY start.sh /start.sh

# Make start script executable
RUN chmod +x /start.sh

# Expose default Icecast port
EXPOSE 8000

# Run it
CMD ["/start.sh"]
