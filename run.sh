#!/bin/bash
docker run -it --name container -v $(pwd)/servers-conf:/app -p 80:80 -p 3306:3306 image
