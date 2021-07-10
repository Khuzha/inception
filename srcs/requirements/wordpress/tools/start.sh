sed -i -e "s/\${DB_HOST}/${DB_HOST}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_NAME}/${DB_NAME}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_USER}/${DB_USER}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_PASSWORD}/${DB_PASSWORD}/g" /tmp/wp-config.php;

mv /tmp/wp-config.php /var/www/html/wordpress;

chmod -R 775 /var/www/html/wordpress;
chown -R www-data /var/www/html/wordpress;
chgrp -R www-data /var/www/html/wordpress;

php -S 0.0.0.0:9000 -t /var/www/html/wordpress;
