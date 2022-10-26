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


#### Setup Apache 
	
##### First update and upgrade the system repositories and all dependencies using the following commands: 
```
###### apt update
```
<img width="680" alt="4a apt update" src="https://user-images.githubusercontent.com/83463641/197920508-bc2fb214-711a-4b11-8795-d0885c06d51b.PNG">

```
###### apt upgrade
```
<img width="902" alt="4b apt upgrade" src="https://user-images.githubusercontent.com/83463641/197921766-5826b7d7-a804-499e-b40a-ff2ab3e9eb3e.PNG">

###### When prompted to configure openssh-server, select the option that says "install the package maintainer's version"
<img width="955" alt="4c  Upgrade propmpt - select the package maintenance version" src="https://user-images.githubusercontent.com/83463641/197922073-b9b4ce59-584b-4a6f-a462-07efeb2356b8.PNG">

###### Install wget package: 
```
apt install wget
```
<img width="423" alt="5 apt install wget" src="https://user-images.githubusercontent.com/83463641/197923064-a8d51740-de87-4817-a46b-33f2fb855bc2.PNG">

###### Install curl package:
```
apt install curl
```
<img width="457" alt="apt install curl" src="https://user-images.githubusercontent.com/83463641/197923110-b9f80c38-6454-483e-b917-1bffc095868b.PNG">

###### Set Hostname:
```
hostnamectl set-hostname laravelmini.osinachiuro.me
```
###### Set time zone:
```
timedatectl set-timezone Africa/Lagos
```
<img width="421" alt="7 set time zone" src="https://user-images.githubusercontent.com/83463641/197924599-119d6caf-c8c8-4c84-9249-8b573a63533c.PNG">

###### Set the host file: (we are going to set the hostname inside the host file, add the IP address of the Digital Ocean server)
```
nano /etc/hosts
```
<img width="934" alt="8  set hostfile" src="https://user-images.githubusercontent.com/83463641/197925528-ffb5e59b-0f10-4edb-8827-d0fbe16d90b8.PNG">

###### Set up firewall using ufw (Uncomplicated Firewall)
```
apt install ufw
```
<img width="584" alt="9 apt install ufw" src="https://user-images.githubusercontent.com/83463641/197926147-6eb74def-133f-493b-9a73-cfeecae0c7fb.PNG">

###### Check app List
```
ufw app list
```
<img width="406" alt="9b ufw app list" src="https://user-images.githubusercontent.com/83463641/197926906-6fd41b33-c066-45ef-994f-6fd6fe83155c.PNG">

###### Allow some firewalls

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

###### Enable Firewall
```
ufw enable
```
<img width="546" alt="10 Enable firewall" src="https://user-images.githubusercontent.com/83463641/197927595-ffb74c6b-7b31-4a34-b56e-32ea3f310550.PNG">

###### install apache2 using: 
```
apt-get install apache2 -y
```
<img width="947" alt="11  apt install apache2 -y" src="https://user-images.githubusercontent.com/83463641/197972437-f94a4b4e-c77a-4d5b-92a9-c519e9ae4a7f.PNG">

###### confirm apache version: 
```
systemctl status apache2
```
<img width="596" alt="11b  confirm apache2 is installed" src="https://user-images.githubusercontent.com/83463641/197974854-7fbf712e-f82e-4ae8-a55d-5eea0874aea0.PNG">

###### Test my Domain name on a web browser to test the installation (osinachiuro.me)

<img width="498" alt="12  Apache default page displayed" src="https://user-images.githubusercontent.com/83463641/197976297-f2438360-bfce-43c6-9f4a-1157a6078ad2.PNG">


#### Setup MySQL

###### Add the latest version of the msql apt repository from MySQL APT Repository using this link https://dev.mysql.com/downloads/repo/apt/ The latest version as at this time is 8.24 

```
wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb
```
<img width="903" alt="13a  Install MySQL - Add mysql apt repo" src="https://user-images.githubusercontent.com/83463641/197985459-512c225d-bed4-42d4-8dca-ddff6996ee24.PNG">

###### Install the release package using: 
```
sudo apt install ./mysql-apt-config_0.8.24-1_all.deb
```
This action returns Configuring mysql-apt-config windows

<img width="942" alt="13b  Install MySQL - mysql appt config" src="https://user-images.githubusercontent.com/83463641/197989246-f343a980-b013-4e46-ad54-ceb5899e78c3.PNG">

<img width="963" alt="13c  Install MySQL - mysql appt config 2" src="https://user-images.githubusercontent.com/83463641/197989290-7d27c1a6-eca2-4ad8-a67c-aebf121c5540.PNG">

###### update and upgrade packages
```
apt update
```
```
apt upgrade
```

###### Install mysql
```
apt install mysql-server
```
Add a password for root when prompted, and I also selected to use legacy authentication method

<img width="966" alt="13d  Install MySQL - legacy authentication" src="https://user-images.githubusercontent.com/83463641/197992237-46db417d-8608-42ed-bc93-4bfbe31a2138.PNG">

###### Verify that the MySQL server is running using: 
```
service mysql status
```
<img width="672" alt="13e  Install MySQL - verify mysql status" src="https://user-images.githubusercontent.com/83463641/197994074-644388ef-6345-4de4-ad63-e997ee82c3fa.PNG">

###### Secure MySQL
```
mysql_secure_installation
```
Select applicable security settings


##### Install PHP

###### Install the required php dependencies using: I am installing php 8.1

```
apt -y install lsb-release apt-transport-https ca-certificates
```
<img width="630" alt="14a  Install php - php dependency" src="https://user-images.githubusercontent.com/83463641/198000293-4dbdaad3-26c3-473c-86fd-9bdfb02eabf0.PNG">

###### Add a Sury repository to APT using
```
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
```
<img width="903" alt="14b  Install php - add the sory repo" src="https://user-images.githubusercontent.com/83463641/198001481-f92c87a6-890b-4356-a3fc-8a00102f01d1.PNG">

###### Add ppa to the server packages
```
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
```
<img width="886" alt="14c  Install php - add ppa" src="https://user-images.githubusercontent.com/83463641/198004769-7ed3dfae-6de8-4b37-b7f4-02091e94e899.PNG">

###### Update and upgrade the packages, install PHP 8.1 and verify the php version installed
```
apt update
```

<img width="546" alt="14d  Install php - apt update" src="https://user-images.githubusercontent.com/83463641/198006216-e8a9c08d-4ea8-4feb-8eb8-5d6318992689.PNG">

```
apt upgrade
```
<img width="896" alt="14e  Install php - apt upgrade" src="https://user-images.githubusercontent.com/83463641/198006297-727fa5b6-a570-4fa8-90d8-1c6a8cc7bbdb.PNG">

```
apt install php libapache2-mod-php php8.1-mysql php8.1-common php8.1-mysql php8.1-xml php8.1-xmlrpc php8.1-curl php8.1-gd php8.1-imagick php8.1-cli php8.1-dev php8.1-imap php8.1-mbstring php8.1-opcache php8.1-soap php8.1-zip php8.1-intl -y
```

<img width="949" alt="14e  Install php" src="https://user-images.githubusercontent.com/83463641/198007175-1c406d6d-c599-460f-9c78-4aabb8e6ff03.PNG">

```
php -v
```

##### Configure our already installed PHP

We will configure php for the web application by changing som values in the php.ini config file
```
nano /etc/php/8.1/apache2/php.ini
```
<img width="388" alt="15  configure php config file" src="https://user-images.githubusercontent.com/83463641/198012665-59683f09-ee34-4e85-a61d-511b4ad39e58.PNG">

I made the following changes:
```
upload_max_filesize = 60M
post_max_size = 128M
memory_limit = 256M
max_input-vars = 3000 (uncomment this line)
max_input_time = 150
max_execution_time = 300
```

###### Restart apache for the changes to be applied and disable default Apache configuration.
```
service apache2 restart
```
```
a2dissite 000-default
```
<img width="402" alt="15b  restart apache and disable default configuration" src="https://user-images.githubusercontent.com/83463641/198016685-637aabc7-3223-4886-85fd-3ed6eb3d3896.PNG">


##### Install Composer

Composer is a dependency manager for PHP. Go to https://getcomposer.org/download/ and run the scripts as stated.

Download and install composer using the following commands: 
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
```
```
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
```
```
php composer-setup.php
```
```
php -r "unlink('composer-setup.php');"
```

<img width="945" alt="16  Install Composer" src="https://user-images.githubusercontent.com/83463641/198019153-97b3de5e-5085-4def-bb91-585232ab94c6.PNG">

Move composer to /usr/local/bin/composer so that it can run globally from anywhere
```
mv composer.phar /usr/local/bin/composer
```
<img width="460" alt="16b  move Composer to a global directory" src="https://user-images.githubusercontent.com/83463641/198020725-6971823c-c36a-4ac2-ad3e-760c95bdeb22.PNG">

##### Install Git and Clone the Laravel Apa Repository

###### cd into the /var/www/html/ directory to install and initialize git
```
apt install git
```
<img width="771" alt="17 install git" src="https://user-images.githubusercontent.com/83463641/198024680-289df6ee-d5ec-4c89-9826-14065f947df8.PNG">

```
git clone https://github.com/f1amy/laravel-realworld-example-app.git
```

rename the cloned folder - give it any name you choose

```
mv laravel-realworld-example-app laravel
```


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
