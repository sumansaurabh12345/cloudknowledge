 FROM centos:latest
 RUN yum install -y sttpd \
 ZIP \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /war/www/html/
 WORKDIR /war/www/html
 RUN unzip kindle.zip
 RUN cp -rvf markups-kindle/*
 RUN cp -rf _MACOSX markups-kindle kindle.zip
 CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
 EXPOSE 80
