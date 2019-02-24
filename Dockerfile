FROM python:alpine 

LABEL maintainer="Edrox"

RUN pip install flask

COPY src /src

WORKDIR 	/src/

EXPOSE 5000

ENTRYPOINT 	["python"]
CMD 		["app.py"]
