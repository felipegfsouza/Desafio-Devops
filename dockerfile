FROM python:3.7-slim-buster
#FROM python:3.9
RUN apt-get update -y && apt-get install -y python3-pip python3-dev
COPY web/requirements.txt /webapps/
WORKDIR /webapps
# Installing dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y libsqlite3-dev net-tools
RUN pip install -U pip setuptools
COPY web/requirements.txt /webapps/
RUN pip install -r /webapps/requirements.txt
ADD . /webapps/