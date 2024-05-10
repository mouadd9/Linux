#!/bin/bash
mkdir sql/
mkdir ressources/
chmod 666 ressources/
chmod 666 sql/
docker run -it -v ./sql:/var/lib/mysql \
               -v ./ressources:/var/www/html \ 
    -p 80:80 -p 3306:3306 \
    --name container --cap-add=NET_ADMIN image 

