FROM nginx:alpine
COPY index.html /usr/share/nginx/html
COPY classie.js /usr/share/nginx/html
COPY bg1.jpg /usr/share/nginx/html
COPY animate.css /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY crystal-free-opl /usr/share/nginx/html