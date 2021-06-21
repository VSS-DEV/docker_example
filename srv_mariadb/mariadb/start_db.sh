#!/bin/sh


if [ -f "/etc/init.d/mysql" ]; then 
chown -R mysql:mysql /var/lib/mysql/*
chmod -R 777 /var/lib/mysql/*
/etc/init.d/mysql start
fi


