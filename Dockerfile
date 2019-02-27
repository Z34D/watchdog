FROM python:3.7.2-alpine 

LABEL maintainer="Edrox"

COPY src /usr/local/src
WORKDIR /usr/local/src/
RUN pip install --upgrade pip
RUN -i --rm -v $(pwd):/app -w /app node:slim sh -c 'apt-get update && apt-get install -y build-essential && apt-get install -y python && npm install'
RUN pip install bcrypt



EXPOSE 5000

CMD [ "python", "./usr/local/src/hello.py" ]
