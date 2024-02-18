#!/bin/bash

service mariadb start
mariadb -e "CREATE DATABASE $DBNAME DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"
mariadb -e "CREATE USER '$DBUSERNAME'@'$DBHOST' IDENTIFIED BY '$DBPASS';"
mariadb -e "GRANT ALL PRIVILEGES ON $DBNAME.* TO $DBUSERNAME@'$DBHOST';"
mariadb -e "FLUSH PRIVILEGES;"
service mariadb restart
