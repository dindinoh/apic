#!/bin/bash

docker rm apic
docker run -td -v $(pwd)/app:/myapp -p 80:80 -p 8080:8080 --name apic apic /production.sh
