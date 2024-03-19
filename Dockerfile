# Use the official Pi-hole Docker image as base
FROM pihole/pihole:latest

# Set environment variables for automated installation
ENV TZ=America/New_York
ENV WEBPASSWORD=password123

# Set timezone (optional)
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Optionally, you can add your blocklists here
# COPY adlists.list /etc/pihole/adlists.list

# Optionally, you can add custom DNS settings here
# COPY 01-custom-dns.conf /etc/dnsmasq.d/01-custom-dns.conf

# Create directories for volumes if they don't exist
RUN mkdir -p /etc/pihole /etc/dnsmasq.d

# Expose ports
EXPOSE 53 53/udp 80 443

# Optionally, you can specify command to start Pi-hole, if you want to override default
# CMD ["-d", ""]
