#!/bin/bash

curl -fsSL https://packages.sury.org/php/apt.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/sury-php.gpg

echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/sury-php.list

apt update

apt install vsftpd dos2unix mariadb-server apache2 libapache2-mod-php8.2 php8.2 php8.2-{cli,mysql,xml,gd,intl,mbstring,curl,zip,soap,bcmath,opcache} -y

cd /var/www/html

wget https://download.moodle.org/download.php/direct/stable405/moodle-latest-405.tgz
