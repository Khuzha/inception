sed -i -e "s/\${DB_HOST}/${DB_HOST}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_NAME}/${DB_NAME}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_USER}/${DB_USER}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_PASSWORD}/${DB_PASSWORD}/g" /tmp/wp-config.php;

mv /tmp/wp-config.php /var/www/html/wordpress;
mv /tmp/fpm.conf /etc/php/7.3/fpm/pool.d/www.conf;

chmod -R 775 /var/www/html/wordpress;
chown -R www-data /var/www/html/wordpress;
chgrp -R www-data /var/www/html/wordpress;

# php -S 0.0.0.0:9000 -t /var/www/html/wordpress;

# tail -f /dev/null;
/usr/sbin/php-fpm7.3 -F
