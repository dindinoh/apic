#!/bin/bash
docker rm apic
docker run -ti -p 80:80 -p 8080:8080 --entrypoint /bin/bash --name apic apic
