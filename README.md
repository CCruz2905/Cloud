# Welcome to CLOUD!
_This material was used for an assignature, I wrote everything I did as a script_

## Installing MySQL on Centos 8
_I wrote a script to install the DB automatically_
```
./install-mysql.sh
```
_At the end, you'll see temporary password, you have to change it_``
```
alter user 'root'@'localhost' identified by 'MyPass';
```

### Creating cloud enviroment
```
create database itsprod;
create user 'itsadmin'@'%' identified by 'Its2017.';
grant all on itsprod.* to 'itsadmin'@'%';
flush privileges;
```
