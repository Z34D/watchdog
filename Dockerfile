FROM python:alpine 

LABEL maintainer="Edrox"

COPY src /usr/local/src
WORKDIR /usr/local/src/
RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python", "./usr/local/src/hello.py" ]
