#!/bin/bash

if [ -d "/var/www/html" ]; then
    cp hello.php /var/www/html/.
fi

if [ -d "/var/www/public" ]; then
    cp hello.php /var/www/public/.
fi

