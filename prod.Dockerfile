FROM nginx:alpine

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY nginx-prod.conf /etc/nginx/nginx.conf

COPY favicon.ico /var/www/http-error/favicon.ico
COPY maintanance-prod.html /var/www/http-error/maintanance.html

EXPOSE 8080

