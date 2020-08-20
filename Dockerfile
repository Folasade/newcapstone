FROM ubuntu

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean

# Copy source code to working directory
COPY index.html /var/www/html
RUN echo 'Hello, welcome to Udacity' > /var/www/welcome.html

# Expose port 80
EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
