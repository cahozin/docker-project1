# Base image
FROM ubuntu

# Install httpd
RUN dnf -y install httpd && \
    dnf clean all

# Copy custom index.html (optional)
COPY index.html /var/www/html/index.html

#working directory
workdir /var/www/html/

# Expose Apache's default port
EXPOSE 80

# Start httpd in foreground
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
