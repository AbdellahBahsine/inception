#!/bin/bash

mysqld_safe &
sleep 3

mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -e "CREATE USER IF NOT EXISTS $DB_USER@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO $DB_USER@'%';"
mysql -e "FLUSH PRIVILEGES;"

service mariadb stop

mysqld_safe