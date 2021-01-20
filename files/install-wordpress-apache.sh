#!/bin/bash
sudo chmod 006 /etc/hosts
sudo echo "127.0.0.1 `hostname`" >> /etc/hosts
sudo apt update -y
sudo apt install mysql-client -y
sudo apt install apache2 apache2-utils -y

sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt install php7.4-{common,mysql,xml,xmlrpc,curl,gd,imagick,cli,dev,imap,mbstring,opcache,soap,zip,intl} -y
sudo apt install libapache2-mod-php7.4 -y

sudo wget -c http://wordpress.org/wordpress-5.5.1.tar.gz
sudo tar -xzvf wordpress-5.5.1.tar.gz
sudo mkdir -p /var/www/html/
sudo rsync -av wordpress/* /var/www/html/
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
sudo cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sudo service apache2 restart
