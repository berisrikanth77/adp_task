server {
       listen 80;
       listen [::]:80;

       server_name myapp2.com www.myapp2.com;

       root /var/www/myapp/myapp2/html;
       index index.html;

       location / {
               try_files $uri $uri/ =404;
         }
}

