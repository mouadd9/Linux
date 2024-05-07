#!/bin/bash
docker run -it --name container \
    -v $(pwd)/install-conf-server:/app \
    -v $(pwd)/sql:/var/lib/mysql \
    -p 80:80 -p 3306:3306 \
    image

