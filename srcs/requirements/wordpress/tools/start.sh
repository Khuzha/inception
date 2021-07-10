sed -i -e "s/\${DB_HOST}/${COMPOSE_PROJECT_NAME}_${DB_HOST}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_NAME}/${DB_NAME}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_USER}/${DB_USER}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_PASSWORD}/${DB_PASSWORD}/g" /tmp/wp-config.php;

mv /tmp/wp-config.php /var/www/html/wordpress;

echo hello;
php -S 0.0.0.0:9000 -t /var/www/html/wordpress;
