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

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
php wp-cli.phar --info;
chmod +x wp-cli.phar;
sudo mv wp-cli.phar /usr/local/bin/wp;
wp core install --allow-root --url=zskeeter.42.fr --title=21 --admin_user=boss --admin_email=boss@boss.com;
wp user create sardorkhuja sardorkhuja@khuzha.com --role=author --allow-root;

# tail -f /dev/null;
/usr/sbin/php-fpm7.3 -F
