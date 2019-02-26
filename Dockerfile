FROM python:3.7.2-alpine 

LABEL maintainer="Edrox"

COPY src /usr/local/src
WORKDIR /usr/local/src/
RUN pip install --upgrade pip
RUN pip install Flask
RUN pip install Flask-wtf
RUN pip install Flask-login
RUN pip install Flask-sqlalchemy
RUN pip install Flask-Cache
RUN pip install Flask-Restful


EXPOSE 5000

CMD [ "python", "./usr/local/src/hello.py" ]
