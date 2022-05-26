FROM centos:7.5.1804
ARG http_proxy
ARG https_proxy
RUN yum install -y httpd iproute
RUN echo "Hello foreground Appache httpd." > /var/www/html/test.html
ENTRYPOINT [ "/usr/sbin/httpd","-DFOREGROUND" ]