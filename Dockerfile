FROM centos:latest
 MAINTAINER shaheil8saurav@gmail.com
 RUN yum install -y sttpd \
 ZIP \
 unzip
 ADD https://www.c
 WORKDIR /war/www/html
 RUN unzip kindle.zip
 RUN cp -rvf markups-kindle/*
 RUN cp -rf _MACOSX markups-kindle kindle.zip
 CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
 EXPOSE 80
