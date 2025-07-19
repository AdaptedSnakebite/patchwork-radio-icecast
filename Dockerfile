FROM moul/icecast
COPY icecast.xml /etc/icecast2/icecast.xml
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
