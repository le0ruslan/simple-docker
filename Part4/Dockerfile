FROM nginx
USER root
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/mime.types /etc/nginx/mime.types
WORKDIR /home/
COPY ./miniwebserver.c .
COPY ./entrypoint.sh .
RUN apt-get update && \
    apt-get install -y gcc spawn-fcgi libfcgi-dev
ENTRYPOINT ["sh", "./entrypoint.sh"]