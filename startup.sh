#!/bin/bash


set -e

if [ -f /etc/configured ]; then
        echo 'already configured'
        sed -i "s@ProxyPass / http://localhost/@ProxyPass / $REMOTE_SITE/@" /etc/apache2/sites-available/default-ssl.conf
        sed -i "s@ProxyPassReverse / http://localhost/@ProxyPassReverse / $REMOTE_SITE/@" /etc/apache2/sites-available/default-ssl.conf
else
      #code that need to run only one time ....
      a2ensite default-ssl
      #disable http
      #rm /etc/apache2/sites-enabled/000-default.conf
      #sed -i 's/Listen 80/#Listen 80/' /etc/apache2/ports.conf
        
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
fi
