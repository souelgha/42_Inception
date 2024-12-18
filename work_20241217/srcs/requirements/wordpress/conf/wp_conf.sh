#!/bin/bash

# wp-cli installation
sleep 15
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# wp-cli permission
chmod +x wp-cli.phar
# wp-cli dans bin
mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html
chmod -R 755 /var/www/html/
chown -R www-data:www-data /var/www/html

wp core download --allow-root

# creation du fichier config.php
wp core config --dbhost=mariadb:3306 \
                --dbname="$MYSQL_DB" \
                --dbuser="$MYSQL_USER" \
                --dbpass="$MYSQL_PASSWORD" \
                --allow-root

echo "ok. config"
# installe wpress avec les details du domaine
wp core install --url="$DOMAIN_NAME" \
                --title="$WP_TITLE" \
                --admin_user="$WP_ADMIN_N" \
                --admin_password="$WP_ADMIN_P" \
                --admin_email="$WP_ADMIN_E" \
                --allow-root
echo "ok. install"
#create a new user with the given username, email, password and role
wp user create "$WP_U_NAME" "$WP_U_EMAIL" \
                --user_pass="$WP_U_PASS" \
                --allow-root
echo "ok. create"

# changement du port listen vers 9000
sed -i '36 s@/run/php/php7.4-fpm.sock@9000@' /etc/php/7.4/fpm/pool.d/www.conf
# php-fpm
mkdir -p /run/php

# start php-fpm 
/usr/sbin/php-fpm7.4 -F