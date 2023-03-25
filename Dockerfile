FROM alpine:3.10
LABEL maintainer="Matthew Delotavo <matthew@darumatic.com>"

# Install system dependencies
RUN apk add --no-cache --update \
      python3 python3-dev gcc \
      gfortran musl-dev g++ \
      libffi-dev openssl-dev \
      libxml2 libxml2-dev \
      libxslt libxslt-dev \
      libjpeg-turbo-dev zlib-dev \
      npm \
      git \
      make \
      coreutils \
      gnupg gawk \
      bash

# Install Python packages
RUN pip3 install --no-cache --upgrade \
      pip setuptools wheel \
 && pip3 install --no-cache --upgrade \
      apigeecli>=0.51.1

# Install global NPM packages
RUN npm install -g \
      apigeelint newman

# Install git-crypt
RUN git clone https://github.com/AGWA/git-crypt.git \
 && cd git-crypt \
 && make \
 && make install PREFIX=/usr/local

# Install git-secret
RUN git clone https://github.com/sobolevn/git-secret.git git-secret \
 && cd git-secret \
 && make build \
 && make \
 && make install PREFIX=/usr/local

WORKDIR /home/apigee
