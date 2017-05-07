#!/bin/bash
docker rm apic
docker run -td -p 80:80 -p 8080:8080 --name apic apic
