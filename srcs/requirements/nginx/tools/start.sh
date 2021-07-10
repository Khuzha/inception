# Set SSL-certificate
mkdir /var/ssl/;

openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 365 \
	-keyout /var/ssl/localhost.key \
	-out /var/ssl/localhost.crt \
	-subj "/C=RU/ST=Tatarstan/L=Kazan/O=Example-Certificates/CN=localhost.local";

# Put configs
cp /tmp/main.conf /etc/nginx/sites-available/;
rm -f /tmp/main.conf;
ln -s /etc/nginx/sites-available/main.conf /etc/nginx/sites-enabled/main.conf;

# Run nginx
service nginx start;

tail -f /dev/null;