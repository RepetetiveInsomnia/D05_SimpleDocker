FROM nginx

RUN apt-get update && apt-get install -y gcc spawn-fcgi libfcgi-dev

COPY ./nginx/nginx.conf /etc/nginx/
COPY ./hello_world.c .
COPY ./docker-entrypoint.sh .

ENTRYPOINT ["bash", "docker-entrypoint.sh" ]
