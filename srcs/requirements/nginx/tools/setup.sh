#!/bin/bash

if ! [ -d /etc/nginx/ssl ]; then
	mkdir /etc/nginx/ssl
fi

wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64
chmod +x mkcert
mv mkcert /usr/local/bin/
mkcert -install &&
mkcert -key-file $CERT_KEY_PATH -cert-file $CERT_PATH $DOMAIN_NAME

nginx -g "daemon off;"