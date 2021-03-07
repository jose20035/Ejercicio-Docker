#! /bin/bash

cd
echo "CREATE DATABASE $DB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" >> schema.sql
echo "GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,CREATE TEMPORARY TABLES,DROP,INDEX,ALTER ON $DB.* TO '$moodle_us'@'localhost' IDENTIFIED BY '$PASS';" >> schema.sql

mysql < schema.sql

chown -R www-data:www-data /var/www

apache2ctl -D FOREGROUND