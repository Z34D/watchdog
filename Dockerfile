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
RUN pip install bcrypt



EXPOSE 5000

CMD [ "python", "./usr/local/src/hello.py" ]
