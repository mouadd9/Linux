#!/bin/bash

echo "Configuring Nginx to serve PHP applications..."

cp /app/nginx.conf /etc/nginx/sites-available/default
rm -f /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
service nginx restart

echo "Updating MySQL Privileges..."

mysql -u root -pYourRootPassword <<EOF
ALTER USER 'phpmyadmin'@'localhost' IDENTIFIED BY 'p';
GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE DATABASE db;
EOF

echo "Updating phpMyAdmin configuration file..."

sudo sed -i "s/localhost/127.0.0.1/g" /etc/phpmyadmin/config-db.php
nano /etc/phpmyadmin/config-db.php

