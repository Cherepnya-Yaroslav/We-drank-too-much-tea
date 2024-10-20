# Lab1 Readme

# Лабораторная работа: Настройка Nginx для обслуживания нескольких доменов

## Цель

Настроить веб-сервер Nginx для обслуживания двух доменов: `devopsitmo.ru` и `devopsitmo.online`. Обеспечить работу сайтов через HTTPS, настроить перенаправление с HTTP на HTTPS, и реализовать показ разных HTML-страниц для каждого домена.

## Ход работы

### 1. Установка Nginx

Установлен Nginx с помощью команды:

```bash
sudo apt install nginx
```

### 2. Настройка SSL-сертификатов

Для работы сайтов по HTTPS использованы SSL-сертификаты от Let’s Encrypt. Сертификаты были сгенерированы с помощью Certbot:

```jsx
sudo certbot --nginx -d devopsitmo.ru -d www.devopsitmo.ru
sudo certbot --nginx -d devopsitmo.online -d www.devopsitmo.online
```

### 3. Настройка виртуальных хостов

Для каждого домена были созданы отдельные файлы конфигурации в директории `/etc/nginx/sites-available/`.

**Конфигурация для `devopsitmo.ru`:**

```jsx
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

```

**Конфигурация для `devopsitmo.online`:**

```jsx
server {
    listen 80;
    server_name devopsitmo.online www.devopsitmo.online;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl;
    server_name devopsitmo.online www.devopsitmo.online;

    ssl_certificate /etc/letsencrypt/live/devopsitmo.online/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/devopsitmo.online/privkey.pem;

    root /var/www/devopsitmo.online;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}

```

### 4. Создание HTML-файлов

Для каждого домена созданы отдельные HTML-страницы, отображающие название домена.

`/var/www/devopsitmo.ru/index.html`

```jsx
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>devopsitmo.ru</title>
</head>
<body>
    <h1>Это сайт: devopsitmo.ru</h1>
</body>
</html>

```

`/var/www/devopsitmo.online/index.html`

```jsx
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>devopsitmo.online</title>
</head>
<body>
    <h1>Это сайт: devopsitmo.online</h1>
</body>
</html>

```

### 5. Проверка конфигурации и перезагрузка Nginx

```jsx
sudo nginx -t
sudo systemctl reload nginx
```

## Результаты

- Оба домена, `devopsitmo.ru` и `devopsitmo.online`, обслуживаются через HTTPS.
- Настроено перенаправление с HTTP на HTTPS.
- Для каждого домена отображается уникальная HTML-страница.

## Заключение

В ходе лабораторной работы был настроен веб-сервер Nginx для обслуживания двух доменов с использованием SSL-сертификатов. Каждая страница имеет уникальное содержимое, соответствующее домену. Все задачи, поставленные в лабораторной работе, были выполнены.