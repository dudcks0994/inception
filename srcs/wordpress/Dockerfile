FROM    debian:bullseye
WORKDIR /var/www/
RUN     apt update && apt install php-fpm wget php-mysqli -y \
        && wget -O latest.tar.gz "https://wordpress.org/latest.tar.gz" \
        && tar -xvf latest.tar.gz && mv wordpress html && rm latest.tar.gz \
        && mkdir -p /run/php

# RUN     wp core install --prompt --url="http://youcki.42.fr" --title="sex" --admin_user="admin" --admin_password="password" --admin_email="fucking@example.com" --allow-root
COPY wp-config.php /var/www/html/
COPY www.conf /etc/php/7.4/fpm/pool.d/
COPY php.ini /etc/php/7.4/fpm/
RUN chown -R www-data:www-data /var/www/html
EXPOSE 9000
EXPOSE 3306             
CMD [ "php-fpm7.4", "-F" ]