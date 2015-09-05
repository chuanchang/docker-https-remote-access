#!/bin/bash


set -e

if [ -f /etc/configured ]; then
        echo 'already configured'
else
      #code that need to run only one time ....
      a2ensite default-ssl
      sed -i 's/ProxyPass \/ http:\/\/localhost\//ProxyPass \/ $REMOTE_SITE//' /etc/apache2/conf.d/owncloud.conf
      sed -i 's/ProxyPassReverse \/ http:\/\/localhost\//ProxyPassReverse \/ $REMOTE_SITE//' /etc/apache2/conf.d/owncloud.conf
      
      #sed -i 's/Listen 80/#Listen 80/' /etc/apache2/ports.conf
        
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
fi
