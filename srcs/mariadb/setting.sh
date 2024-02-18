#!/bin/bash

service mariadb start
mariadb -e "CREATE DATABASE wordpress_db DEFAULT CHARACTER SET utf8;"
mariadb -e "CREATE USER 'youngcki'@'wordpress' IDENTIFIED BY 'secret';"
mariadb -e "GRANT ALL PRIVILEGES ON wordpress_db.* TO youngcki@'wordpress';"
mariadb -e "FLUSH PRIVILEGES;"
service mariadb restart
