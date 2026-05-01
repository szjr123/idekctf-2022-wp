#!/bin/bash

nginx -g "daemon off;" &

su -s /bin/bash ctf -c "python3 /app/app.py"

python3 app.py
