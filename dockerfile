FROM ubuntu
n
MAINTAINER Kavita G

jira1 softwares jira

RUN apt-get update 

RUN apt-get install -y nginx
ENTRYPOINT [“/usr/sbin/nginx”,”-g”,”daemon off;”]
EXPOSE 80
