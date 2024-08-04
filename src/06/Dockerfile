FROM nginx

WORKDIR /home/

RUN apt-get update && apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    rm -rf /var/lib/apt/lists

COPY ./nginx/nginx.conf /etc/nginx/
COPY ./docker-entrypoint.sh /home/

USER nginx

ENTRYPOINT ["bash", "docker-entrypoint.sh" ]

HEALTHCHECK NONE
