FROM ubuntu

MAINTAINER Kavita

RUN apt-get update jira

RUN apt-get install -y nginx
ENTRYPOINT [“/usr/sbin/nginx”,”-g”,”daemon off;”]
EXPOSE 80
