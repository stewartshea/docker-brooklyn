FROM centos:7

MAINTAINER shea.stewart@arctiq.ca

RUN yum clean all \ 
    && yum install -y wget net-tools \
    && wget https://www.apache.org/dyn/closer.lua?action=download&filename=brooklyn/apache-brooklyn-0.10.0/apache-brooklyn-0.10.0-1.noarch.rpm \ 
    && rpm -ivh apache-brooklyn-0.10.0-1.noarch.rpm

CMD ["bin/brooklyn","launch"]