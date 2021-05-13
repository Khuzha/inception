
sed -i -e "s/\${DB_HOST}/${DB_HOST}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_NAME}/${DB_NAME}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_USER}/${DB_USER}/g" /tmp/wp-config.php;
sed -i -e "s/\${DB_PASSWORD}/${DB_PASSWORD}/g" /tmp/wp-config.php;

bash;