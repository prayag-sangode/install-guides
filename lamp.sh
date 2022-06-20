#!/bin/bash
# Author : Prayag
# Install LAPM stack on RockyLinux8/RHEL8
sudo yum -y install httpd 
sudo systemctl enable --now httpd
sudo firewall-cmd --permanent --zone=pulic --add-service=http
sudo firewall-cmd --permanent --zone=pulic --add-service=https
sudo firewall-cmd --reload
sudo yum -y install php php-mysqlnd php-pdo php-gd php-mbstring
sudo yum -y install mariadb-server mariadb
sudo systemctl enable --now mariadb
