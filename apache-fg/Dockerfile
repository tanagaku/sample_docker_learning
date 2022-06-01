FROM centos:7.5.1804
RUN yum install -y httpd iproute
RUN echo "Hello foreground Apache httpd." > /var/www/html/test.html
ENTRYPOINT ["/usr/sbin/httpd","-DFOREGROUND"]