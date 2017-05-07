#!/bin/bash

cd /picoLisp
./pil @lib/http.l @lib/xhtml.l @lib/form.l  --server 8080 /myapp/main.l  +
