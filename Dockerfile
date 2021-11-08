FROM ajones17/frr:latest

# Install updates

# Move to /etc/frr
RUN rm -rf /etc/frr && mkdir -p /etc/frr
WORKDIR /etc/frr
# Create logging directory
RUN mkdir -p /var/log/frr/ && chown -R frr:frr /var/log/frr/
# Copy config files in
COPY configs/ .
# Configuration files
VOLUME /etc/frr
# Expose ports
EXPOSE 22 23 80 179
# Reset workdir
WORKDIR /
# Start FRR and run vtysh
ENTRYPOINT ["/sbin/tini", "--", "/usr/lib/frr/docker-start", "/usr/bin/vtysh"]
