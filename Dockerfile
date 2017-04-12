FROM centos:7

MAINTAINER shea.stewart@arctiq.ca

RUN yum clean all \ 
    && yum install -y wget net-tools

RUN wget http://apache.mirror.globo.tech/brooklyn/apache-brooklyn-0.10.0/apache-brooklyn-0.10.0-1.noarch.rpm \ 
    && yum install -y apache-brooklyn-0.10.0-1.noarch.rpm

RUN chmod +x /opt/brooklyn/bin/brooklyn

CMD ["/opt/brooklyn/bin/brooklyn","launch"]