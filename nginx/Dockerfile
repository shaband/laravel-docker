FROM nginx:stable-alpine

# RUN apt-get update -y
# RUN apt-get install -y openssl
 RUN apk add --no-cache  openssl

RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/nginx/certs/self-signed/

RUN openssl req \
 -x509 \
 -nodes \
 -days 365 \
 -newkey \
 rsa:2048 \
 -keyout /etc/nginx/certs/self-signed/tabieb.test.key \
 -out /etc/nginx/certs/self-signed/tabieb.test.crt \
 -subj "/C=US/ST=Florida/L=Orlando/O=Development/OU=Dev/CN=tabieb.test"

RUN openssl dhparam -out /etc/nginx/certs/dhparam.pem 2048