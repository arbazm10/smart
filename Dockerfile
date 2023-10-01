FROM ubuntu
MAINTAINER arbazmtn@gmail.com
RUN apt-get install -y apache2 \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/coto.zip  /var/www/html/
 WORKDIR  /var/www/html
 RUN unzip coto.zip
 RUN cp -rvf html/* .
 RUN rm -rf html  coto.zip
 CMD ["/usr/sbin/apache2", "-D",   "FOREGROUND"]
 EXPOSE 80





#FROM centos:7
#MAINTAINER arbazmtn@gmail.com
#RUN yum install -y httpd \
#  zip \
#unzip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/maker.zip  /var/www/html/
#WORKDIR  /var/www/html
#RUN unzip maker.zip
#RUN cp -rvf maker/* .
#RUN rm -rf maker  maker.zip
#CMD ["/usr/sbin/httpd", "-D",   "FOREGROUND"]
#EXPOSE 80
