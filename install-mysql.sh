#!/bin/bash
echo 'Enable the MySQL Yum repository'
sudo yum install -y https://repo.mysql.com//mysql80-community-release-el8-1.noarch.rpm

echo 'Disable the Default MySQL Module'
sudo yum module -y disable mysql

echo 'Installing MySQL'
sudo yum install -y mysql-community-server

echo 'Starting the MySQL Server'
sudo systemctl start mysqld

echo 'Checking status of the MySQL Server'
systemctl status mysqld

echo 'Temporary password'
sudo grep 'temporary password' /var/log/mysqld.log

echo 'Finish'

