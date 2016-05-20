#!/bin/bash

cd /var/www/html

if [ ! -e .htaccess ]; then
    # NOTE: The "Indexes" option is disabled in the php:apache base image
    cat > .htaccess <<EOF
    # BEGIN WordPress
    <IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /
    RewriteRule ^hello\.php$ - [L]
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule . /hello.php [L]
    </IfModule>
    # END WordPress
EOF

chown www-data:www-data .htaccess

fi

chown www-data:www-data hello.php

exec apache2-foreground