#!/bin/bash

gcc hello_world.c -o hello_world -lfcgi
spawn-fcgi -p 8080 ./hello_world

service nginx start

/bin/bash
