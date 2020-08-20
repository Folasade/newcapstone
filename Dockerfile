FROM ubuntu

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean

# Copy source code to working directory
COPY newcapstone/index.html /var/www/html

# Expose port 80
EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
