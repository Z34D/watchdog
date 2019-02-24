FROM python:alpine 

LABEL maintainer="Edrox"

RUN pip install flask

COPY src /usr/local/src

EXPOSE 5000

ENTRYPOINT ["python", "/usr/local/src/app.py"]
