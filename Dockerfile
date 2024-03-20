
# Make this file easier to read
FROM pihole/pihole:latest

# Set timezone
ENV TZ=America/New_York

# Create directories for volumes if they don't exist
RUN mkdir -p /etc/pihole /etc/dnsmasq.d

# Expose ports
EXPOSE 53 53/udp 80 443

# Command to start Pi-hole
# CMD ["-d"]
