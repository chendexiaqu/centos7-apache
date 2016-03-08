FROM centos:7
MAINTAINER hidetarou2013 <hidetoshi_maekawa@e-it.co.jp>

RUN yum -y update && yum -y upgrade

# tag:Apache2.4.6
RUN yum install -y httpd
#RUN sed -i -e 's/Options Indexes FollowSymLinks/Options Includes ExecCGI FollowSymLinks/g' /etc/httpd/conf/httpd.conf
#RUN sed -i -e 's/AllowOverride None/AllowOverride All/g' /etc/httpd/conf/httpd.conf
#RUN rm -f /etc/httpd/conf.d/welcome.conf
EXPOSE 80 

# tag:SSL
RUN yum install -y openssl mod_ssl
EXPOSE 443

# tag:PHP5.3.3
#RUN yum install -y php php-mbstring php-mysql sudo 

#ENTRYPOINT /etc/init.d/httpd start
#ENTRYPOINT systemctl enable httpd && systemctl start httpd
ENTRYPOINT /usr/sbin/apachectl -DFOREGROUND
