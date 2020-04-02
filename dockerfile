FROM nginx:alpine
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY mime.types /etc/nginx/mime.types
COPY static /usr/share/nginx/html
COPY web /var/www/html/
COPY web /usr/share/nginx/html/