FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
RUN mkdir /var/www/html/images/
RUN mkdir /var/www/html/icons/
COPY /icons/* /var/www/html/icons/
COPY /images/* /var/www/html/images/
COPY index.html /var/www/html/
COPY styles.css /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]