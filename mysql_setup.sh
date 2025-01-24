#!/bin/bash

# Update and install MySQL
sudo apt-get update -y
sudo apt-get install -y mysql-server

# Allow remote access to MySQL
sudo sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf

# Restart MySQL to apply changes
sudo systemctl restart mysql

# Create WordPress database and user
sudo mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'%' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "MySQL setup completed."
