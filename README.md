# WordPress and MySQL Deployment with Vagrant
This project demonstrates how to deploy a WordPress application with a MySQL database using Vagrant, Oracle VirtualBox, and Ubuntu. It sets up two separate virtual machines (VMs): one for the WordPress application and another for the MySQL database. The deployment is automated using shell scripts.
-
## Project Structure
```
├── Vagrantfile               # Vagrant configuration for the two VMs
├── wordpress_setup.sh        # Provisioning script for the WordPress VM
├── mysql_setup.sh            # Provisioning script for the MySQL VM
├── additional_setup.sh       # Placeholder for any extra setup tasks
├── .gitignore                # Git configuration to ignore unnecessary files
└── README.md                 # Project documentation (this file)
```

## Prerequisites
[Vagrant]("https://developer.hashicorp.com/vagrant/install").  

[Oracle_VirtualBox]("https://www.virtualbox.org/wiki/Downloads").  

[Git]("https://git-scm.com/downloads"). 


## How to Use 
### Step 1: Clone the Repository 
```bash 
https://github.com/Suvamatha/Wordpress-Deployment-using-Automation.git
``` 

### Step 2: Initialize and Start Vagrant
```bash 
vagrant up
``` 


### Step 3: Acess the Setup
**WordPress VM:** Visit [http://192.168.56.106](http://192.168.56.106) in your browser. 

**MySQL VM:** MySQL is accessible at `192.168.56.105`. 

### Step 4: Stop and Destroy the VMs
To stop the VMs: 
```bash 
vagrant halt
``` 
To destroy the VMs and clean up 
```bash 
vagrant destroy
```  

## Project Setup and Configuration

### MySQL VM

- **IP:** `192.168.56.105`
- **Hostname:** `mysql.local`
- **Runs the** `mysql_setup.sh` **provisioning script.**

### WordPress VM

- **IP:** `192.168.56.106`
- **Hostname:** `wordpress.local`
- **Runs the** `wordpress_setup.sh` **provisioning script.**

---

### WordPress Setup (`wordpress_setup.sh`)

- Installs Apache, and necessary dependencies.
- Downloads and configures WordPress.
- Sets up file permissions.
- Configures the database connection in `wp-config.php`.

### MySQL Setup (`mysql_setup.sh`)

- Installs MySQL server.
- Configures MySQL for remote access.
- Creates a `wordpress` database and user with appropriate privileges.

---










