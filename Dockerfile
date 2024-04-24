FROM nginx:1.26.0-alpine

EXPOSE 80/tcp 443/tcp

VOLUME [ "/etc/nginx/conf.d" ]
VOLUME [ "/opt/ssl" ]

COPY [ "./src/conf.d", "/etc/nginx/conf.d" ]
COPY [ "./src/dhparam.pem", "/etc/nginx/dhparam.pem" ]
COPY [ "./src/nginx.conf", "/etc/nginx/nginx.conf" ]
COPY [ "./src/ssl", "/opt/ssl" ]
