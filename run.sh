#!/bin/bash
mkdir -p sql/
mkdir -p ressources/
chmod 755 ressources/
chmod 755 sql/
docker run -it -v "$(pwd)/sql:/var/lib/mysql" -v "$(pwd)/ressources:/var/www/html" \
    -p 80:80 -p 3306:3306 \
    --name container --cap-add=NET_ADMIN image 

