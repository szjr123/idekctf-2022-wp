FROM python:3.8.16-slim-bullseye

RUN useradd ctf

COPY flag.txt start.sh /

# setup app

WORKDIR /app

COPY app /app/

RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

# setup nginx

RUN apt update -y && apt install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf

# start services
EXPOSE 1337

CMD mount -t tmpfs none /tmp && /start.sh

