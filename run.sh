#!/bin/bash

docker run -it -v /home/mouad/Linux/sql:/var/lib/mysql \
    -p 80:80 -p 3306:3306 \
    --name container4 --cap-add=NET_ADMIN image 

