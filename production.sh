#!/bin/bash

cd /picoLisp
./pil /myapp/main.l -main -go -wait &
bin/httpGate 80 8080
while true; do sleep 1m; done
