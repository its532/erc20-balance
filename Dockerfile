FROM centos

MAINTAINER Itsuki Kikuyama

RUN yum install -y httpd

ADD ./index.html /var/www/html/
#ポート80を開ける
EXPOSE 80
#runした時にapache起動
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]