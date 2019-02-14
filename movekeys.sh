#!/bin/sh

install -c -D -m 0400 /etc/uwsgi/ssl/ca.crt /var/www/ssl/ca.crt
install -c -D -m 0400 /etc/uwsgi/ssl/tls.crt /var/www/ssl/tls.crt
install -c -D -m 0400 /etc/uwsgi/ssl/tls.key /var/www/ssl/tls.key
