FROM nginx:1.18.0-alpine

LABEL org.opencontainers.image.authors="Gareth Flowers" \
	org.opencontainers.image.description="Nginx Proxy Server" \
	org.opencontainers.image.licenses="MIT" \
	org.opencontainers.image.title="nginx-proxy" \
	org.opencontainers.image.url="https://github.com/garethflowers/docker-nginx-proxy" \
	org.opencontainers.image.vendor="garethflowers"

EXPOSE 80
EXPOSE 443

VOLUME [ "/etc/nginx/conf.d" ]
VOLUME [ "/opt/ssl" ]

COPY [ "./src/conf.d", "/etc/nginx/conf.d" ]
COPY [ "./src/dhparam.pem", "/etc/nginx/dhparam.pem" ]
COPY [ "./src/nginx.conf", "/etc/nginx/nginx.conf" ]
COPY [ "./src/ssl", "/opt/ssl" ]
