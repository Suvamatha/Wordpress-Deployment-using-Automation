Vagrant.configure("2") do |config|
  # MySQL Machine
  config.vm.define "mysql" do |mysql|
    mysql.vm.box = "ubuntu/jammy64"
    mysql.vm.network "private_network", ip: "192.168.56.105"
    mysql.vm.hostname = "mysql.local"
    mysql.vm.provision "shell", inline: "chmod +x /vagrant/mysql_setup.sh"
    mysql.vm.provision "shell", path: "mysql_setup.sh"
  end

  # WordPress Machine
  config.vm.define "wordpress" do |wordpress|
    wordpress.vm.box = "ubuntu/jammy64"
    wordpress.vm.network "private_network", ip: "192.168.56.106"
    wordpress.vm.hostname = "wordpress.local"
    wordpress.vm.provision "shell", inline: "chmod +x /vagrant/wordpress_setup.sh"
    wordpress.vm.provision "shell", path: "wordpress_setup.sh"
  end
end
