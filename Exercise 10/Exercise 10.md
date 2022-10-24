# Exercise 10 - Deploying a Laravel project on Debian 11 operating system 

## Brief
Manually using Apache, PHP and MySQL, deploy a laravel Realworld Example App on debian 11

### 1. Download Debian iso
From debian.org, download Debian-11.50-amd64.iso

3. Goto VirtualBox and create a new virtual machine called Debian11
4. Install and setup the downloaded debian iso in the newly created virtual machine followng all the prompts. This process takes a while to complete.
5. Setup Apache and all the required dependencies required to run a laravel app.
	First update the system repositories using: 'sudo apt update'; then 'sudo apt upgrade'
	Install wget package: sudo apt install wget
	install apache2 using: sudo apt-get install apache2 -y
	confirm apache version: sudo systemctl status apache2
5. Install PHP and other required extensions for laravel.
	Install the requred dependencies using sudo apt-get install apt-transport-https gnupg2 ca-certificates -y 
	Add a Sury repository to APT using: $ echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/sury-php.list
	Install gnupg using: sudo apt-get install gnupg	then download and add the GPG key using:$ wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -
	Update the server using: $ apt-get update -y
	Install the PHP 8.1 using: $ sudo apt-get install php8.1 libapache2-mod-php php8.1-dev php8.1-zip php8.1-curl php8.1-mbstring php8.1-mysql php8.1-gd php8.1-xml
	Confirm php is installed using: php -v
6. Install MySQL
	First add MySQL APT rrepository to the server. Visit the download page to get the latest release package https://dev.mysql.com/downloads/repo/apt/ using: wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb
	Install the release package using: sudo apt install ./mysql-apt-config_0.8.22-1_all.deb
	Update the server using: sudo apt update; Install MySql using: sudo apt install mysql-server
	Verify that the MySQL server is running using: sudo service mysql status
	log into mysql using $ mysql -u root -p; Create a database called 'project' using; create database project; then exit
7. Download and install composer using: sudo curl -sS https://getcomposer.org/installer | php
	Next, move the composer file to the /usr/local/bin path using: $ sudo mv composer.phar /usr/local/bin/composer
	Assign composer execute permission using: $ sudo mv composer.phar /usr/local/bin/composer
	Verify compser version using: composer --version
8. Configure and Initialize Git using:git config --global user.name "first last"
	git config --global user.email "youremail@email.com"
	cd into /var/www/html and run: sudo git init
	clone the laravel app folder using: sudo git clone https://github.com/f1amy/laravel-realworld-example-app.git
	cd into the app folder and rename the .env.example file to .env using: sudo mv .env.example .env
	edit the .env file as shown.
	Using composer install the repository by running: sudo composer install
	verify the installed version using: php artisan
	Generate a key for the app using: php artisan generate key
	Then migrate the app using: php artisan migrate
9. Edit the apache2 config file.
	create your own config file using: sudo nano laravel.conf
	Enable the laravel virtual host using: $ sudo a2ensite laravel.conf
	Restart the Apache web server using: $ sudo systemctl restart apache2
