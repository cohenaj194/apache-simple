#creates apache container and adds html file
FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y apache2 curl

ADD index.html /var/www/html/
VOLUME /var/www/html/
# for openshift
RUN mkdir /var/run/apache2/
RUN chmod 777 /var/lock/

EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
