server {
    listen 80;
    server_name devopsitmo.ru www.devopsitmo.ru;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl;
    server_name devopsitmo.ru www.devopsitmo.ru;

    ssl_certificate /etc/letsencrypt/live/devopsitmo.ru/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/devopsitmo.ru/privkey.pem;

    root /var/www/devopsitmo.ru;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
