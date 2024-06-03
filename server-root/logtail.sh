#!/bin/bash

tail -f `ls /usr/share/nginx/html/writable/logs/*log -t  | head -n 1`