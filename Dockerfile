FROM python:alpine 

LABEL maintainer="Edrox"

RUN pip install flask

COPY src /usr/local/src

EXPOSE 5000

CMD [ "python", "./usr/local/src/hello.py" ]
