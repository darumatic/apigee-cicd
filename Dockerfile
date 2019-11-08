FROM alpine:3.10
LABEL maintainer="Matthew Delotavo <matthew@darumatic.com>"
RUN apk add --no-cache --update \
      python3 python3-dev gcc \
      gfortran musl-dev g++ \
      libffi-dev openssl-dev \
      libxml2 libxml2-dev \
      libxslt libxslt-dev \
      libjpeg-turbo-dev zlib-dev \
      npm \
 && pip3 install --no-cache --upgrade \
      pip setuptools wheel apigeecli \
 && npm install -g \
      apigeelint newman
WORKDIR /home/apigee
