# Exercise

## Task:

Install PHP 7.4 on your local linux machine using the ppa:ondrej/php package repo.

### Instruction:

Learn how to use the add-apt-repository command
Submit the content of /etc/apt/sources.list and the output of php -v command.

#### 1. Add all required dependencies with: sudo apt install software-properties-common apt-transport-https -y

#### 2. Add repository for php with: sudo add-apt-repository ppa:ondrej/php -y

#### 3. Run an update: sudo apt-get update -y

#### 4. Run an upgrade: sudo apt-get upgrade -y

#### 5. Install php: sudo apt install -y php7.4 php7.4-common

#### 6. Submit the content of /etc/apt/sources.list: sudo cat /etc/apt/sources.list

#### 7. Confirm that php is installed:php -v
