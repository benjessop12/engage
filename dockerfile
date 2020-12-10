FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

RUN mkdir /engage

WORKDIR /engage

ADD requirements.txt /engage/

RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install python3-dev default-libmysqlclient-dev -y

ADD . /engage/
