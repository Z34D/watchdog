FROM python:3.7.2-alpine 

LABEL maintainer="Edrox"

COPY src /usr/local/src
WORKDIR /usr/local/src/
RUN pip install --upgrade pip
RUN apk add --update alpine-sdk
RUN apk update \
    && apk add --virtual build-dependencies \
        build-base \
        gcc \
        wget \
        git \
        libffi \
        openssh \
    && apk add \
        bash
        
RUN apk -X https://uk.alpinelinux.org/alpine/edge/main add --no-cache llvm
fetch https://uk.alpinelinux.org/alpine/edge/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.6/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.6/community/x86_64/APKINDEX.tar.gz

RUN pip install bcrypt



EXPOSE 5000

CMD [ "python", "./usr/local/src/hello.py" ]
