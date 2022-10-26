# Exercise 10 - Deploying a Laravel project on Debian 11 operating system 

## Brief
Deploy a laravel Realworld Example App on debian 11 operating system ....

### 1. Register a domain name if yu dont already have one
I used namecheap to register a domain called osinachuro.me

### Create a virtual server with any of the Cloud service providers
I used Digital ocean to create a Debian droplet. I used PuttyGen app to generate ssh key for the droplet.

 <img width="626" alt="1 Created a Debian Droplet" src="https://user-images.githubusercontent.com/83463641/197918029-106d038f-0c8f-4936-8444-842f5bcbe5e4.PNG">
 
 <img width="464" alt="1b Generated ssh key for my droplet using puttyGen" src="https://user-images.githubusercontent.com/83463641/197919450-71cad398-42f5-439a-ac97-0cdea2e07d7a.PNG">

### Connect the server to the domain name

First I setup my Custom DNS  by adding the digital Ocean nameserver to my Domain name registrar, Namecheap.
![Added Nameserver](https://user-images.githubusercontent.com/83463641/197919582-d9ee268a-9118-4f6c-b416-022d5f198dff.JPG)

Set up A record and host name on Digital Ocean

![domain name](https://user-images.githubusercontent.com/83463641/197919599-293962de-560b-40cd-9faf-de04b448177f.JPG)

### Set up the Debian Machine with all the necessary installations needed to run a Laravel App

#### Launch the Digital Ocean Debian droplet terminal
<img width="532" alt="3 Launch the debian machine to start all the necessary installations" src="https://user-images.githubusercontent.com/83463641/197919878-b042eddc-b342-4024-940e-fd93b08712e2.PNG">

The Digital Ocean Debian droplet terminal defaults to the root user

#### Setup Apache and all the dependencies required to run a laravel app.
	
1. First update and upgrade the system repositories all dependencies using: 
```
apt update
```
<img width="680" alt="4a apt update" src="https://user-images.githubusercontent.com/83463641/197920508-bc2fb214-711a-4b11-8795-d0885c06d51b.PNG">

```
apt upgrade
```
<img width="902" alt="4b apt upgrade" src="https://user-images.githubusercontent.com/83463641/197921766-5826b7d7-a804-499e-b40a-ff2ab3e9eb3e.PNG">

When prompted to configure openssh-server, select the option that says "install the package maintainer's version"
<img width="955" alt="4c  Upgrade propmpt - select the package maintenance version" src="https://user-images.githubusercontent.com/83463641/197922073-b9b4ce59-584b-4a6f-a462-07efeb2356b8.PNG">

Install wget package: 
```
apt install wget
```
<img width="423" alt="5 apt install wget" src="https://user-images.githubusercontent.com/83463641/197923064-a8d51740-de87-4817-a46b-33f2fb855bc2.PNG">

Install curl package:
```
apt install curl
```
<img width="457" alt="apt install curl" src="https://user-images.githubusercontent.com/83463641/197923110-b9f80c38-6454-483e-b917-1bffc095868b.PNG">

Set Hostname:
```
hostnamectl set-hostname laravelmini.osinachiuro.me
```
Set time zone:
```
timedatectl set-timezone Africa/Lagos
```
<img width="421" alt="7 set time zone" src="https://user-images.githubusercontent.com/83463641/197924599-119d6caf-c8c8-4c84-9249-8b573a63533c.PNG">

Set the host file: (we are going to set the hostname inside the host file, add the IP address of the Digital Ocean server)
```
nano /etc/hosts
```
<img width="934" alt="8  set hostfile" src="https://user-images.githubusercontent.com/83463641/197925528-ffb5e59b-0f10-4edb-8827-d0fbe16d90b8.PNG">

Set up firewall
```
apt install ufw
```
<img width="584" alt="9 apt install ufw" src="https://user-images.githubusercontent.com/83463641/197926147-6eb74def-133f-493b-9a73-cfeecae0c7fb.PNG">
Check app List
```
ufw app list
```
<img width="406" alt="9b ufw app list" src="https://user-images.githubusercontent.com/83463641/197926906-6fd41b33-c066-45ef-994f-6fd6fe83155c.PNG">
```
ufw allow OpenSSH
```
```
ufw allow 'WWW Full'
```
```
ufw allow SSH
```
<img width="378" alt="9c ufw allow openssh, www full, ssh" src="https://user-images.githubusercontent.com/83463641/197926931-3bc82f37-0390-4f33-9a33-39efea8575cc.PNG">

Enable Firewall
```
ufw enable
```
<img width="546" alt="10 Enable firewall" src="https://user-images.githubusercontent.com/83463641/197927595-ffb74c6b-7b31-4a34-b56e-32ea3f310550.PNG">





install apache2 using: 
```
sudo apt-get install apache2 -y
```

confirm apache version: 
```
sudo systemctl status apache2
```
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
