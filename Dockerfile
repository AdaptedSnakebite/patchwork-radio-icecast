FROM alpine:latest

# Install Icecast
RUN apk update && apk add --no-cache icecast

# Create icecast user and group (skip error if already exists)
RUN addgroup -S icecast || true && adduser -S -G icecast icecast || true

# Copy the Icecast config file
COPY icecast.xml /etc/icecast.xml

# Copy the start script
COPY start.sh /start.sh

# Make start script executable
RUN chmod +x /start.sh

# Switch to icecast user to avoid running as root
USER icecast

# Expose port 8080
EXPOSE 8080

# Run start.sh when container launches
CMD ["/start.sh"]
