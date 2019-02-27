FROM python:3.7.2-alpine 

LABEL maintainer="Edrox"

COPY src /usr/local/src

RUN pip install --upgrade pip
RUN apk add --update alpine-sdk
RUN apk update \
    && apk add --virtual build-dependencies \
        build-base \
        gcc \
        wget \
        git \
        libffi-dev \
        openssl-dev \
        libffi \
        openssh \
    && apk add \
        bash
        
WORKDIR /usr/local/src/
RUN pip install -r requirements.txt



EXPOSE 5000
EXPOSE 22


