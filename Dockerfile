FROM python:alpine 

LABEL maintainer="Edrox"

RUN pip install flask

COPY src /src

EXPOSE 5000

ENTRYPOINT 	["python"]
CMD 		["/src/app.py"]
