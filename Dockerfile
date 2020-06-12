FROM nginx:1.18.0-alpine

ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
	org.label-schema.description="Nginx image tweaked for running as a reverse proxy." \
	org.label-schema.docker.cmd="docker run --detach garethflowers/nginx-proxy" \
	org.label-schema.name="nginx-proxy" \
	org.label-schema.schema-version="1.0" \
	org.label-schema.url="http://nginx.org/" \
	org.label-schema.vcs-ref=$VCS_REF \
	org.label-schema.vcs-url="https://github.com/garethflowers/docker-nginx-proxy" \
	org.label-schema.vendor="garethflowers" \
	org.label-schema.version="0.0.1"

EXPOSE 80
EXPOSE 443

VOLUME [ "/etc/nginx/conf.d" ]
VOLUME [ "/opt/ssl" ]

COPY [ "./src/conf.d", "/etc/nginx/conf.d" ]
COPY [ "./src/dhparam.pem", "/etc/nginx/dhparam.pem" ]
COPY [ "./src/nginx.conf", "/etc/nginx/nginx.conf" ]
COPY [ "./src/ssl", "/opt/ssl" ]
