FROM python:alpine 

LABEL maintainer="Edrox"

RUN pip install flask

COPY . /src/

EXPOSE 5000

ENTRYPOINT ["python", "/src/app.py"]
