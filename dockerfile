FROM ubuntu

MAINTAINER Kavita gandikota

jira1 software

RUN apt-get update 

RUN apt-get install -y nginx
ENTRYPOINT [“/usr/sbin/nginx”,”-g”,”daemon off;”]
EXPOSE 80
