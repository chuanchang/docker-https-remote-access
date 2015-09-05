#!/bin/bash

a2enmod proxy_http headers rewrite ssl
mkdir /etc/apache2/ssl
cd /etc/apache2/ssl


rm /etc/apache2/sites-enabled/000-default.conf
#to fix error relate to ip address of container apache2
echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf
ln -s /etc/apache2/conf-available/fqdn.conf /etc/apache2/conf-enabled/fqdn.conf
#disable http
sed -i 's/Listen 80/#Listen 80/' /etc/apache2/ports.conf
