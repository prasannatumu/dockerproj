FROM python:3.7.3-stretch

MAINTAINER prasannatumu05@gmail.com

#working directory
WORKDIR /app

#Copy source code to working directory
COPY . app.py /app/

#Install packages from requirements.txt
#hadolint
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt