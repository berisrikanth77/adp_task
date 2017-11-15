server {
       listen 80;
       listen [::]:80;

       server_name myapp1.com www.myapp1.com;

       root /var/www/myapp/myapp1/html;
       index index.html;

       location / {               
               try_files $uri $uri/ =404;
       }
}

