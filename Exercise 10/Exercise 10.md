# Exercise 10: 2nd Semester Mini Project - Deploying a Laravel project on Debian 11 operating system 

## Brief
#### We will be deploying a real life application:
- Demo Project: https://github.com/f1amy/laravel-realworld-example-app
- Setup Debian 11 on a virtual machine instance with a cloud provider or as instructed
- Setup Apache with every dependency the application needs to run
- Don’t use Laravel Sail or Docker as suggested in the project README file, simple clone the project with Git and deploy with Apache
- Setup MySQL with credentials and a database for your aplication to use
- Configure a subdomain if you have a domain name to point the VM instance or speak to an instructor for further guide
- You have completed the project if you are able to view the application according to the specifications in the project from your Host browser
- Test your API endpoints to confirm that they are reachable.

---
## Steps

### 1. Register a domain name if yu dont already have one
* I used namecheap to register a domain called. Here is my [Domain](https://osinachuro.me)
---

### 2. Create a virtual server with any of the Cloud service providers
* I used Digital ocean to create a Debian droplet. I used PuttyGen app to generate ssh key for the droplet.

 <img width="626" alt="1 Created a Debian Droplet" src="https://user-images.githubusercontent.com/83463641/197918029-106d038f-0c8f-4936-8444-842f5bcbe5e4.PNG">
 
 <img width="464" alt="1b Generated ssh key for my droplet using puttyGen" src="https://user-images.githubusercontent.com/83463641/197919450-71cad398-42f5-439a-ac97-0cdea2e07d7a.PNG">

---

### 3. Connect the server to the domain name

* First I setup my Custom DNS  by adding the digital Ocean nameserver to my Domain name registrar, Namecheap.

![Added Nameserver](https://user-images.githubusercontent.com/83463641/197919582-d9ee268a-9118-4f6c-b416-022d5f198dff.JPG)

* Set up A record and host name on Digital Ocean

![domain name](https://user-images.githubusercontent.com/83463641/197919599-293962de-560b-40cd-9faf-de04b448177f.JPG)
---

### 4. Set up the Debian Machine with all the necessary installations needed to run a Laravel App

#### a. Launch the Digital Ocean Debian droplet terminal
<img width="532" alt="3 Launch the debian machine to start all the necessary installations" src="https://user-images.githubusercontent.com/83463641/197919878-b042eddc-b342-4024-940e-fd93b08712e2.PNG">

**Note** The Digital Ocean Debian droplet terminal defaults to the root user.

#### b. Setup Apache 
	
* First update and upgrade the system repositories and all dependencies using the following commands: 
```
apt update
```
<img width="680" alt="4a apt update" src="https://user-images.githubusercontent.com/83463641/197920508-bc2fb214-711a-4b11-8795-d0885c06d51b.PNG">

```
apt upgrade
```
<img width="902" alt="4b apt upgrade" src="https://user-images.githubusercontent.com/83463641/197921766-5826b7d7-a804-499e-b40a-ff2ab3e9eb3e.PNG">

**Note** When prompted to configure openssh-server, select the option that says "install the package maintainer's version"

<img width="955" alt="4c  Upgrade propmpt - select the package maintenance version" src="https://user-images.githubusercontent.com/83463641/197922073-b9b4ce59-584b-4a6f-a462-07efeb2356b8.PNG">

* Install wget package: 
```
apt install wget
```
<img width="423" alt="5 apt install wget" src="https://user-images.githubusercontent.com/83463641/197923064-a8d51740-de87-4817-a46b-33f2fb855bc2.PNG">

* Install curl package:
```
apt install curl
```
<img width="457" alt="apt install curl" src="https://user-images.githubusercontent.com/83463641/197923110-b9f80c38-6454-483e-b917-1bffc095868b.PNG">

* Set Hostname:
```
hostnamectl set-hostname laravelmini.osinachiuro.me
```
* Set time zone:
```
timedatectl set-timezone Africa/Lagos
```
<img width="421" alt="7 set time zone" src="https://user-images.githubusercontent.com/83463641/197924599-119d6caf-c8c8-4c84-9249-8b573a63533c.PNG">

* Set the host file: (we are going to set the hostname inside the host file, add the IP address of the Digital Ocean server)
```
nano /etc/hosts
```
<img width="934" alt="8  set hostfile" src="https://user-images.githubusercontent.com/83463641/197925528-ffb5e59b-0f10-4edb-8827-d0fbe16d90b8.PNG">

* Set up firewall using ufw (Uncomplicated Firewall)
```
apt install ufw
```
<img width="584" alt="9 apt install ufw" src="https://user-images.githubusercontent.com/83463641/197926147-6eb74def-133f-493b-9a73-cfeecae0c7fb.PNG">

* Check app List
```
ufw app list
```
<img width="406" alt="9b ufw app list" src="https://user-images.githubusercontent.com/83463641/197926906-6fd41b33-c066-45ef-994f-6fd6fe83155c.PNG">

* Allow some firewalls

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

* Enable Firewall
```
ufw enable
```
<img width="546" alt="10 Enable firewall" src="https://user-images.githubusercontent.com/83463641/197927595-ffb74c6b-7b31-4a34-b56e-32ea3f310550.PNG">

* install apache2 using: 
```
apt-get install apache2 -y
```
<img width="947" alt="11  apt install apache2 -y" src="https://user-images.githubusercontent.com/83463641/197972437-f94a4b4e-c77a-4d5b-92a9-c519e9ae4a7f.PNG">

* confirm apache version: 
```
systemctl status apache2
```
<img width="596" alt="11b  confirm apache2 is installed" src="https://user-images.githubusercontent.com/83463641/197974854-7fbf712e-f82e-4ae8-a55d-5eea0874aea0.PNG">

* Test my Domain name on a web browser to test the installation (osinachiuro.me)

<img width="498" alt="12  Apache default page displayed" src="https://user-images.githubusercontent.com/83463641/197976297-f2438360-bfce-43c6-9f4a-1157a6078ad2.PNG">

#### c. Setup MySQL

* Add the latest version of the msql apt repository from MySQL APT Repository using this link https://dev.mysql.com/downloads/repo/apt/ The latest version as at this time is 8.24 

```
wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb
```
<img width="903" alt="13a  Install MySQL - Add mysql apt repo" src="https://user-images.githubusercontent.com/83463641/197985459-512c225d-bed4-42d4-8dca-ddff6996ee24.PNG">

* Install the release package using: 
```
sudo apt install ./mysql-apt-config_0.8.24-1_all.deb
```
**Note** This action returns some 'configuring mysql-apt-config' windows

<img width="942" alt="13b  Install MySQL - mysql appt config" src="https://user-images.githubusercontent.com/83463641/197989246-f343a980-b013-4e46-ad54-ceb5899e78c3.PNG">

<img width="963" alt="13c  Install MySQL - mysql appt config 2" src="https://user-images.githubusercontent.com/83463641/197989290-7d27c1a6-eca2-4ad8-a67c-aebf121c5540.PNG">

* Update and upgrade packages
```
apt update
```
```
apt upgrade
```

* Install mysql
```
apt install mysql-server
```
**Note** Add a password for root when prompted, and I also selected to use legacy authentication method.

<img width="966" alt="13d  Install MySQL - legacy authentication" src="https://user-images.githubusercontent.com/83463641/197992237-46db417d-8608-42ed-bc93-4bfbe31a2138.PNG">

* Verify that the MySQL server is running using: 
```
service mysql status
```
<img width="672" alt="13e  Install MySQL - verify mysql status" src="https://user-images.githubusercontent.com/83463641/197994074-644388ef-6345-4de4-ad63-e997ee82c3fa.PNG">

* Secure MySQL
```
mysql_secure_installation
```
**Note** Select all applicable security settings

##### d. Create our Database

* Log into the mysql DB and view available databases:
```
mysql -u root -p
```
<img width="527" alt="13f  Install MySQL - log into mysql" src="https://user-images.githubusercontent.com/83463641/198087323-6a110bca-7db2-426d-a6d1-ac0470b8a381.PNG">
```
show databases;
```
<img width="265" alt="13g  show available databases" src="https://user-images.githubusercontent.com/83463641/198116580-1f615727-b9bf-4768-b477-abd90e9b0d8a.PNG">

* Create a database (I called mine 'project')

```
create database project;
```

<img width="287" alt="13h  Create Database" src="https://user-images.githubusercontent.com/83463641/198088631-ac70bab9-fc57-4a9d-9b98-f883ed608fca.PNG">


##### e. Install PHP

* First, install the required php dependencies using: I am installing php 8.1

```
apt -y install lsb-release apt-transport-https ca-certificates
```
<img width="630" alt="14a  Install php - php dependency" src="https://user-images.githubusercontent.com/83463641/198000293-4dbdaad3-26c3-473c-86fd-9bdfb02eabf0.PNG">

* Add a Sury repository to APT using
```
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
```
<img width="903" alt="14b  Install php - add the sory repo" src="https://user-images.githubusercontent.com/83463641/198001481-f92c87a6-890b-4356-a3fc-8a00102f01d1.PNG">

* Add ppa to the server packages
```
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
```
<img width="886" alt="14c  Install php - add ppa" src="https://user-images.githubusercontent.com/83463641/198004769-7ed3dfae-6de8-4b37-b7f4-02091e94e899.PNG">

* Update and upgrade the packages, install PHP 8.1 and verify the php version installed.
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

##### f. Configure our already installed PHP

* We will configure php for the web application by changing some values in the php.ini config file
```
nano /etc/php/8.1/apache2/php.ini
```
<img width="388" alt="15  configure php config file" src="https://user-images.githubusercontent.com/83463641/198012665-59683f09-ee34-4e85-a61d-511b4ad39e58.PNG">

* I made the following changes:
```
upload_max_filesize = 60M
post_max_size = 128M
memory_limit = 256M
max_input-vars = 3000 (uncomment this line)
max_input_time = 150
max_execution_time = 300
```

* Restart apache for the changes to be applied and disable default Apache configuration.
```
service apache2 restart
```
```
a2dissite 000-default
```
<img width="402" alt="15b  restart apache and disable default configuration" src="https://user-images.githubusercontent.com/83463641/198016685-637aabc7-3223-4886-85fd-3ed6eb3d3896.PNG">

##### g. Install Composer

**Note** Composer is a dependency manager for PHP. Go to https://getcomposer.org/download/ and run the scripts as stated.

* Download and install composer using the following commands: 
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
```
```
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
```
* Install Composer
```
composer install
```
<img width="947" alt="24 Install Composer" src="https://user-images.githubusercontent.com/83463641/198125235-6fc1f0fe-4921-4b1f-80a6-8142b2a66cd5.PNG">

```
apt install unzip
```

<img width="635" alt="25 Install unzip" src="https://user-images.githubusercontent.com/83463641/198125327-fe58d010-6602-46b9-8e5c-2a31c7801aef.PNG">

```
composer update
```
```
php composer-setup.php
```
```
php -r "unlink('composer-setup.php');"
```

<img width="945" alt="16  Install Composer" src="https://user-images.githubusercontent.com/83463641/198019153-97b3de5e-5085-4def-bb91-585232ab94c6.PNG">

* Move composer to /usr/local/bin/composer so that it can run globally from anywhere

```
mv composer.phar /usr/local/bin/composer
```

<img width="460" alt="16b  move Composer to a global directory" src="https://user-images.githubusercontent.com/83463641/198020725-6971823c-c36a-4ac2-ad3e-760c95bdeb22.PNG">


##### h. Install Git and Clone the Laravel Apt Repository

* cd into the /var/www/html/ directory to install and initialize git

```
apt install git
```

<img width="771" alt="17 install git" src="https://user-images.githubusercontent.com/83463641/198024680-289df6ee-d5ec-4c89-9826-14065f947df8.PNG">

```
git clone https://github.com/f1amy/laravel-realworld-example-app.git
```

* Rename the cloned folder - give it any name you choose

```
mv laravel-realworld-example-app laravel
```

* Grant all the required file and folder permissions

<img width="666" alt="18a file permissions" src="https://user-images.githubusercontent.com/83463641/198077961-94a5b2a2-7260-44bc-a2f6-1e28d84bab52.PNG">

<img width="597" alt="18b file permissions" src="https://user-images.githubusercontent.com/83463641/198078001-1af1784a-3bcb-434c-9fed-fe38384c83e1.PNG">

<img width="597" alt="18b file permissions" src="https://user-images.githubusercontent.com/83463641/198078355-711ba99b-5175-44b8-b103-21aa439d687a.PNG">


##### i. Create the Virtual Host Configuration File

```
nano /etc/apache2/sites-available/laravel.conf
```

* Add this script

```
<VirtualHost *:80>

     ServerAdmin admin@domainname.com
     ServerName domainname.com
     ServerAlias www.domainname.com

     DocumentRoot /var/www/html/domainname/public

     <Directory /var/www/html/domainname/public>
         Options Indexes FollowSymLinks
         AllowOverride All
         Require all granted
     </Directory>

     ErrorLog ${APACHE_LOG_DIR}/error.log 
     CustomLog ${APACHE_LOG_DIR}/access.log combined 
 </VirtualHost>
```

<img width="767" alt="19 Edit the host config file" src="https://user-images.githubusercontent.com/83463641/198081028-060711e4-888e-46e0-9dce-8c1607f3fe6e.PNG">

* Enable the new configuration

```
a2ensite laravel.conf
```
<img width="470" alt="27 Enable the new virtual host config file" src="https://user-images.githubusercontent.com/83463641/198133081-ba33d3fd-f3ce-4344-8d65-b6117c9796f8.PNG">

* .env.example flle to .env and edit the content of .env file

```
cp .env.example .env
```
<img width="427" alt="20 Change the env-example file" src="https://user-images.githubusercontent.com/83463641/198082133-f23fcb73-787b-4461-9242-20ed04a66ac9.PNG">

```
nano .env
```

##### j. Enable Module Rewrite on Apache2 and restart Apache2:

```
a2enmod rewrite
```
<img width="408" alt="21 Enable Module rewrite and restart Apache2" src="https://user-images.githubusercontent.com/83463641/198093187-c8e9dafa-d85f-4255-b33b-6932819c665e.PNG">

##### k. Add HTaccess
 ```
 nano .htaccess
 ```
 
<img width="647" alt="22 Add  htaccess" src="https://user-images.githubusercontent.com/83463641/198120588-74978eaa-c6c0-41d7-972e-a6a47dc3edc8.PNG">

##### l. Add Front access by editing the web.php file

* cd into routes directory in the laravel app folder then run:

```
nano web.php
```
<img width="538" alt="23 edit web dot php file" src="https://user-images.githubusercontent.com/83463641/198120675-a6f6d903-e388-43d1-bcb1-aafc3cd070d6.PNG">

##### m. Migrate the Database
```
composer create-project
```
```
php artisan migrate --seed
```
<img width="940" alt="26 php artisan migrate seed" src="https://user-images.githubusercontent.com/83463641/198129726-5e0b3970-26d6-4e31-8dad-067ce3c1e489.PNG">

##### n. Restart the Apache web server using: 
```
systemctl restart apache2
```
##### o. Refresh domain name page to display the Laravel Page: osinachiuro.me

<img width="620" alt="28 Laravel Loading with my domain name" src="https://user-images.githubusercontent.com/83463641/198134402-3f216aeb-ba41-48bb-8e56-b4a0deaa8959.PNG">

---

#### 5. Activate lets encrypt so we can access the web app vis https

* Go to Digital ocean and power off the droplet.

* Take a snapshot of the current state of your server to avoid any data loss when activating Let'sEncrypt.

* Power the droplet back on then log into the console and run the following commands.

* Install Let'sEncrypt which generates an SSL certificate for domain names. For this process, we will install Certbot to install Let’sEncrypt SSL using Snap.

```
apt update
```
```
apt install snapd -y
```
```
snap install core
```
```
snap refresh core
```

* Install Certbot tool

```
snap install --classic certbot
```

* Configure Certbot to be executable as as a command

```
ln -s /snap/bin/certbot /usr/bin/certbot
```
* Create an A record in Digital Ocean for the www domain you will use for the next script

```
certbot --apache --agree-tos --redirect -m youremail@email.com -d domainname.com -d www.domainname.com
```
* SSL Certificate request sucessful

<img width="852" alt="29 ssl cert request successful" src="https://user-images.githubusercontent.com/83463641/198146158-12f0a165-511c-4d7a-8a30-141085812680.PNG">

* Re-edit .HTaccess file to include https redirect
```
nano /var/www/html/laravel/.htaccess
```
* Edit as shown below:

```
IfModule mod_rewrite.c>
  RewriteEngine On
  
  RewriteCond %{HTTPS} off
  RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
    
  RewriteCond %{REQUEST_URI} !^/public/
  RewriteCond %{REQUEST_FILENAME} !-d
  RewriteCond %{REQUEST_FILENAME} !-f
  
  RewriteRule ^(.*)$ /public/$1
  RewriteRule ^(/)?$ public/index.php [L]
</IfModule>
```
---
#### Next is Endpoint testing using browser and Postman. Checck the file: [API Endpoints Testing]()

#### The End
