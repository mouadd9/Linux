#!/bin/bash
echo "Updating package lists..."
apt-get update

echo "Installing Nginx, MySQL, PHP, and phpMyAdmin..."
apt-get install -y nginx mysql-server php-fpm php-mysql phpmyadmin php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip

echo "Enabling services..."
systemctl enable nginx
systemctl enable mysql
systemctl enable php7.4-fpm

echo "Installation complete. Services have been enabled."
