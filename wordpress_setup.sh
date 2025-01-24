#!/bin/bash

# Update and install Apache, PHP, and dependencies
sudo apt-get update -y
sudo apt-get install -y apache2 php libapache2-mod-php php-mysql wget unzip

# Download and install WordPress
cd /var/www/html
sudo wget https://wordpress.org/latest.zip
sudo unzip latest.zip
sudo mv wordpress/* .
sudo rm -rf wordpress latest.zip

# Set correct permissions
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Configure WordPress
sudo cp wp-config-sample.php wp-config.php
sudo sed -i "s/database_name_here/wordpress/" wp-config.php
sudo sed -i "s/username_here/wordpress/" wp-config.php
sudo sed -i "s/password_here/123/" wp-config.php
sudo sed -i "s/localhost/192.168.56.10/" wp-config.php

# Enable Apache rewrite module and restart
sudo a2enmod rewrite
sudo systemctl restart apache2

echo "WordPress setup completed."
