#!/bin/bash
git clone https://github.com/mouadd9/login_register.git /var/www/html

cd /var/www/html

git config --global user.name "mouadd9"
git config --global user.email "bencaidmouad9@gmail.com"

git remote add origin https://github.com/mouadd9/login_register.git