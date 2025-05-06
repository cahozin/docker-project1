Dockerfile example:
FROM docker.io/centos
MAINTAINER Devops Engineer
RUN yum update && yum -y install httpd
RUN mkdir -p /data/myscript
WORKDIR /data/myscript
CMD python app.py
