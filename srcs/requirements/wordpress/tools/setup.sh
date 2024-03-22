#!/bin/bash

sleep 5

if ! [ -d /var/www/html ]; then
	mkdir -p /var/www/html
fi

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html

wp core download --allow-root --force

wp config create --dbname=$DB_NAME --dbhost=$DB_HOST --dbuser=$DB_USER --dbpass=$DB_PASSWORD --allow-root

wp core install --url=$DOMAIN_NAME --title="Inception website" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root

wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASSWORD --allow-root

if ! [ -d /run/php ]; then
	mkdir -p /run/php
fi

sed -i 's/^listen = .*/listen = 0.0.0.0:9000/' /etc/php/7.4/fpm/pool.d/www.conf

/usr/sbin/php-fpm7.4 -F