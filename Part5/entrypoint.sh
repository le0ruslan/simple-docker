#!/bin/bash

gcc -o mini_server miniwebserver.c -lfcgi
spawn-fcgi -p 8080 ./mini_server
service nginx start
nginx -g "daemon off;"