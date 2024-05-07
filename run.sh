#!/bin/bash
docker run -it -v C:/Users/pepe/Desktop/Linux/setup:/app -v C:/Users/pepe/Desktop/Linux/sql:/var/lib/mysql -p 80:80 -p 3306:3306 --name container --cap-add=NET_ADMIN image
