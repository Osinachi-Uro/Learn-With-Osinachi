# Exercise 4

## Task:

* Install PHP 7.4 on your local linux machine using the ppa:ondrej/php package repo.

### Instruction:

* Learn how to use the add-apt-repository command
* Submit the content of /etc/apt/sources.list and the output of php -v command.

#### 1. Add all required dependencies with: 
```
sudo apt install software-properties-common apt-transport-https -y
```

<img width="632" alt="1" src="https://user-images.githubusercontent.com/83463641/192122255-e695f39f-b1c0-4acc-b2b1-55503d39f546.PNG">


#### 2. Add repository for php with: 
```
sudo add-apt-repository ppa:ondrej/php -y
```

<img width="500" alt="2" src="https://user-images.githubusercontent.com/83463641/192122277-fe1ad97b-ef88-4d77-a31c-cf8d47a31deb.PNG">


#### 3. Run an update: 
```
sudo apt-get update -y
```

<img width="489" alt="3" src="https://user-images.githubusercontent.com/83463641/192122279-b84a32b2-320d-422b-b230-7ab0886eb2c5.PNG">


#### 4. Run an upgrade: 
```
sudo apt-get upgrade -y
```

<img width="702" alt="4" src="https://user-images.githubusercontent.com/83463641/192122287-a9850991-fcc6-44bd-b71c-801e3dbe71ab.PNG">


#### 5. Install php: 
```
sudo apt install -y php7.4 php7.4-common
```

<img width="927" alt="5" src="https://user-images.githubusercontent.com/83463641/192122311-6e3acbd8-5bcb-4b72-978f-caab1ba43f56.PNG">


#### 6. Submit the content of /etc/apt/sources.list: 
```
sudo cat /etc/apt/sources.list
```

<img width="528" alt="7" src="https://user-images.githubusercontent.com/83463641/192122320-d611cb76-0d51-4d5e-aa92-566386f82f6d.PNG">


#### 7. Confirm what version of php is installed:
```
php -v
```

<img width="387" alt="6 php version" src="https://user-images.githubusercontent.com/83463641/192122336-9b5620e9-3fc2-4333-a94e-81ff4827770e.PNG">


### The End
