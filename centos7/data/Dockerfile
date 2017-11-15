FROM ubuntu:16.04
RUN apt-get update && apt-get install nginx -y
EXPOSE 80 
COPY test.tar.gz /var/www/
WORKDIR /var/www/
RUN tar -xvzf test.tar.gz
COPY myapp1.com /etc/nginx/sites-available/
COPY myapp2.com /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/myapp1.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/myapp2.com /etc/nginx/sites-enabled/
CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT service nginx start
