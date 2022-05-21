FROM centos:7.5.1804
RUN yum install -y epel-release
RUN yum install -y nginx iproute
RUN mkdir -p /etc/nginx/conf.d /var/www/{abcd,efgh}
RUN echo "ABCD" > /var/www/abcd/index.html
RUN echo "EFGH" > /var/www/efgh/index.html
COPY vhost.conf /etc/nginx/conf.d/
RUN systemctl enable nginx