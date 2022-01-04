#!/bin/sh
cd /var/packages/EmbyServer/target/mono/bin
curl https://github.com/zzz20475/embyonekey/blob/master/mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
./cert-sync /etc/ssl/certs/ca-certificates.crt
cd /usr/local/etc/nginx/conf.d/*-*-*-*
wget https://raw.githubusercontent.com/Ethan-7seng/embyonekey/master/user.conf
nginx -s reload

