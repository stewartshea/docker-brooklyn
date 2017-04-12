FROM centos:7

MAINTAINER shea.stewart@arctiq.ca

RUN yum clean all \ 
    && yum install -y wget net-tools

RUN wget https://www.apache.org/dyn/closer.lua/brooklyn/apache-brooklyn-0.10.0/apache-brooklyn-0.10.0-1.noarch.rpm \ 
    && yum install -y apache-brooklyn-0.10.0-1.noarch.rpm

CMD ["bin/brooklyn","launch"]