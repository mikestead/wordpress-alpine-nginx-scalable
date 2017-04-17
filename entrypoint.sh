#!/bin/bash

mkdir -p /var/www/wp-content/plugins
mkdir -p /var/www/wp-content/themes
mkdir -p /var/www/wp-content/upgrade
mkdir -p /var/www/wp-content/uploads

file=/var/www/wp-content/index.php

if [ ! -e "$file" ] ; then
  touch /var/www/wp-content/index.php
  printf "<?php\n#Silence is golden" >> /var/www/wp-content/index.php
fi

chown -Rf www-data:www-data /var/www/wp-content/

exec "$@"
