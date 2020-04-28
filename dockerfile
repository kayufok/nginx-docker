FROM nginx:stable-alpine

# Copy nginx config file to /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy sites/ws.kayu.club folder to /var/www
COPY sites/ws.kayu.club /var/www/ws.kayu.club
