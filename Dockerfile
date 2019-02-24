FROM python:alpine 

LABEL maintainer="Edrox"

RUN pip install flask

COPY run.py /run.py

EXPOSE 5000

ENTRYPOINT ["python", "/app.py"]
