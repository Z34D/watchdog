FROM python:alpine 

LABEL maintainer="Edrox"

COPY src /usr/local/src

RUN pip install -r /usr/local/src/requirements.txt

EXPOSE 5000

CMD [ "python", "./usr/local/src/hello.py" ]
