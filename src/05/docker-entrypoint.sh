#!/bin/bash

gcc hello_world.c -o hello_world -lfcgi

service nginx start
nginx -s reload

spawn-fcgi -p 8080 ./hello_world

while true; do
    sleep 1
done