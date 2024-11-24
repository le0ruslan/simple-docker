FROM nginx

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/mime.types /etc/nginx/mime.types


WORKDIR /home/


COPY ./miniwebserver.c .
COPY ./entrypoint.sh .

RUN apt-get update && \
    apt-get install -y gcc spawn-fcgi libfcgi-dev && \
    gcc -o mini_server miniwebserver.c -lfcgi && \
    rm /usr/bin/chfn &&\
    chown -R nginx:nginx /etc/nginx/nginx.conf && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /home && \
    touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid && \
    rm -rf /var/lib/apt/lists

USER nginx

ENTRYPOINT ["sh", "./entrypoint.sh"]

HEALTHCHECK NONE
