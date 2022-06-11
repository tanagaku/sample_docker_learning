FROM local/c7-systemd
COPY httpd_vsftpd.sh /usr/local/bin
RUN yum install -y httpd vsftpd \
  && chmod 755 /usr/local/bin/httpd_vsftpd.sh \
  && echo "password1234" | passwd --stdin ftpuser01 \
  && ln -s /home/ftpuser01 /var/www/html/ftpuser01
ENTRYPOINT [ "/usr/local/bin/httpd_vsftpd.sh" ]

