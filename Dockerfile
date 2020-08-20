FROM httpd

# Copy source code to working directory
COPY newcapstone/index.html /var/www/html

# Expose port 80
EXPOSE 80
