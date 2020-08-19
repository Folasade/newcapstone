FROM nginx:latest

# Copy source code to working directory
COPY index.html /var/www/html

# Expose port 80
EXPOSE 80
