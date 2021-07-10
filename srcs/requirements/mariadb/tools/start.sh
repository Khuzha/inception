service mysql start;
service mysql status;

echo "CREATE USER IF NOT EXISTS '${DB_USER}'@'${DB_HOST}' IDENTIFIED BY '${DB_PASSWORD}';";
echo "CREATE USER '${DB_USER}'@'${DB_HOST}' IDENTIFIED BY '${DB_PASSWORD}';" | mariadb;
echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;";
echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mariadb;
echo "GRANT ALL ON ${DB_NAME}.* TO '${DB_USER}'@'${DB_HOST}';";
echo "GRANT ALL ON ${DB_NAME}.* TO '${DB_USER}'@'${DB_HOST}';" | mariadb;
echo "update mysql.user set plugin='mysql_native_password' where user='${DB_USER}';";
echo "update mysql.user set plugin='mysql_native_password' where user='${DB_USER}';" | mariadb;
echo "FLUSH PRIVILEGES;";
echo "FLUSH PRIVILEGES;" | mariadb;

tail -f /dev/null;
