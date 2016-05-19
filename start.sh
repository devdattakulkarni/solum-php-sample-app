#!/bin/bash

cd /var/www/html

chown www-data:www-data hello.php

exec apache2-foreground