FROM httpd:latest

WORKDIR /app

COPY ./Ajisoso_Web/ /usr/local/apache2/htdocs/

EXPOSE 80