#! bin/bash
/usr/bin/pkill vsftpd
/usr/sbin/httpd -k restart #httpd deamonの起動
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf #vsftpd deamonの起動
tail -f /dev/null