#!/bin/bash
cat << EOF >> $SQLFILE
CREATE DATABASE $DBNAME DEFAULT CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON $DBNAME.* TO '$MARIADBUSER'@'localhost' IDENTIFIED BY '$MARIADBPASSWORD' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'MARIADBUSER7'@'%' IDENTIFIED BY '$MARIADBPASSWORD' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MARIADBPASSWORD' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF
my_install_db
mkdir /var/run/mysql /var/lib/mysql /var/log/mysql
chown -R mysql:mysql /var/run/mysql /var/lib/mysql /var/log/mysql
/usr/bin/mysqld_safe --datadir='/var/lib/mysql' &
sleep 20
mysqladmin -U $MARIADBUSER password $MARIADBPASSWORD
mysql -u $MARIADBUSER -p$MARIADBPASSWORD < $SQLFILE
rm -rf $SQLFILE
tail -f /dev/null