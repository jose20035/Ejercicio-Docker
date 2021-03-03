#!/bin/bash

sed -i "s/this->user=\"root\";/this->user=\"$USER\";/g" /var/www/html/core/controller/Database.php
sed -i "s/this->pass=\"\";/this->pass=\"$PASS\";/g" /var/www/html/core/controller/Database.php
sed -i "s/this->host=\"localhost\";/this->host=\"$NOMBRESQL\";/g" /var/www/html/core/controller/Database.php
sed -i "s/this->ddbb=\"bookmedik\";/this->ddbb=\"$NOMBREDB\";/g" /var/www/html/core/controller/Database.php

apache2ctl -D FOREGROUND