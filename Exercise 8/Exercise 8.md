# Exercise 8 Ansible

## Task:
* Create an Ansible Playbook to setup a server with Apache.
* The server should be set to the Africa/Lagos Timezone
* Host an index.php file with the following content, as the main file on the server:

```

<?php
date("F d, Y h:i:s A e", time());
?>

```

### Instruction:
* Submit the Ansible playbook, the output of systemctl status apache2 after deploying the playbook and a screenshot of the rendered page

### Note: I decided to execute this exercise using my local host server - Vagrant.

#### Step 1: I created 2 servers and called one of them 'unwara' and 'ozizza'
```
vagrant init ubuntu/focal64
```
* Edit their Vagrantfile to change their IP address to type: "dhcp". This action enables IP addresses to be assigned dynamically when vagrant is initialized.

```
vagrant up
```

<img width="583" alt="2 virtual servers" src="https://user-images.githubusercontent.com/83463641/195208280-9a5f1373-f8d7-402a-9f80-2f649b693da7.PNG">


#### Step 2: The plan is the use server 'unwara' to set up server 'ozizza'. 

* So i cd into the folder called 'unwara' the ssh into the server:

```
vagrant ssh
```

#### Step 3: In server 'unwara', install all the required dependency, in this case python3.
```
sudo apt install -y software-properties-common python-apt
```
<img width="770" alt="1 Install Ansible dependencies" src="https://user-images.githubusercontent.com/83463641/195210123-5f991dbe-894b-4f3f-a7eb-37267478731f.PNG">

#### Step 4: To install ansible, first run an update
```
sudo apt-get update
```
```
sudo apt install -y ansible
```
<img width="948" alt="2 Install Ansible" src="https://user-images.githubusercontent.com/83463641/195213667-94bf3298-bc5d-4b98-b058-6a11874ffed0.PNG">


#### Step 5: From server 'unwara' generate ssh key which it will connect server 'ozziza' with

* First for ease of identification, i will log in and give server ozizza a static hostname
```
sudo hostnamectl set-hostname server.ozizza.local --static
```

<img width="524" alt="assign a static hostname" src="https://user-images.githubusercontent.com/83463641/197552774-e95f5065-cf25-4c55-ab5b-822b7595f78d.PNG">

* The edit the ssh config file to allow ssh by setting password authentication to 'yes' and save
```
sudo nano /etc/ssh/sshd_config
```
* Then restart the service so that the changes can take effect
```
sudo systemctl restart sshd
```
* Go back to the unwara server and run:
```
ssh-keygen
```
<img width="470" alt="ssh-keygen" src="https://user-images.githubusercontent.com/83463641/197557424-1c26a0d8-8d74-4361-a7e6-bc6013537cc4.PNG">

* Copy the ssh key using
```
ssh-copy-id -i vagrant@192.168.56.5
```
* type 'yes' when asked, and when prompted for passwrd use 'vagrant'

<img width="691" alt="copy ssh key" src="https://user-images.githubusercontent.com/83463641/197559121-61f6a511-3f21-4295-a994-400f7eaee089.PNG">

* Connect to the ozizza server using:
```
ssh vagrant@192.168.56.5
```
* This should successfully connect you to the second server, which is ozizza in this case.

<img width="498" alt="connected" src="https://user-images.githubusercontent.com/83463641/197559973-5b46d0ef-f632-4ead-a06f-70214a702d59.PNG">

#### Step 8 Set up a host inventory file for Ansible
**Note** A host inventory file stores diffent IP addresses and host names that you want to use when you are automating tasks

First let us make a directory called Ansible and go ineo the folder
```
mkdir Ansible && cd Ansible
```
<img width="354" alt="make ansible folder" src="https://user-images.githubusercontent.com/83463641/197561952-08257d40-6c3b-47f7-83b7-5fd8840da020.PNG">

Lets create the host inventory file using: (you can call your file any name)
```
nano inventory
```
Add our target machine (ozizza) into the inventory file

<img width="514" alt="inventory file" src="https://user-images.githubusercontent.com/83463641/197563128-302f0c43-b9cf-4551-bc81-b5cdaad5e00d.PNG">

#### Step 9 Set up an Ansible playbook which is a yaml file that contains sets of tasks and instruction to be executed remotely on a server.
* Let us create a playbook file using: (you can call your file any name with the yml extension)
```
nano book.yml
```
* Write the playbook instruction and close., the we test our inventory, to see if ansible is having a connection with the server and the inventory file.

```
ansible all -i inventory -m ping  
```
**Note**: "inventory' is the name of your host inventory file

<img width="446" alt="confirm connection" src="https://user-images.githubusercontent.com/83463641/197570527-3bc29630-ee80-4a74-90d3-048f64182f69.PNG">

#### Step 10 Let us execute our playbook instructions
* First we test it by running the following code:
```
ansible-playbook book.yml -i inventory --check
```
**Note**: "book.yml' is the name of your playbook file

<img width="599" alt="playbook for apache installation" src="https://user-images.githubusercontent.com/83463641/197580238-0425d103-4b90-49de-803f-283b2d2d0444.PNG">

<img width="836" alt="playbook check" src="https://user-images.githubusercontent.com/83463641/197580264-89c9c850-ea25-4837-93c1-eb5b22c9b40f.PNG">

* Everything looks okay, so let us run our playbok
```
ansible-playbook book.yml -i inventory
```
<img width="845" alt="playbook executed" src="https://user-images.githubusercontent.com/83463641/197581091-9fbf249e-22ab-4c70-9c65-ff80779aca58.PNG">

<img width="509" alt="apache page rendered successfully" src="https://user-images.githubusercontent.com/83463641/197581132-f581a1e0-fa4c-4365-a9f8-3c5dd9bf13b4.PNG">

#### Step 11 Create an index.php file and point it to the IP Address

* Create an index.ph file with the content below:
```
sudo nano index.php
```

```
<?php
date_default_timezone_set('Africa/Lagos');
echo date("F d, Y h:i:s A e", time());
?>
```

<img width="690" alt="index-php file" src="https://user-images.githubusercontent.com/83463641/197590080-2014af69-fec0-4785-9d82-30f33215595e.PNG">

#### Step 12 Edit the playbook to include a task for index.php

<img width="921" alt="final playbook" src="https://user-images.githubusercontent.com/83463641/197654153-20bfeb42-cd0a-4968-b908-913c583fff7c.PNG">

* Execute the playbok command one more time:
```
ansible-playbook book.yml -i inventory --check
```

<img width="919" alt="playbook check" src="https://user-images.githubusercontent.com/83463641/197653944-4f34c912-6047-455e-b140-9718b655b48c.PNG">

* Execute it without the check
```
ansible-playbook book.yml -i inventory
```
<img width="840" alt="playbook executed" src="https://user-images.githubusercontent.com/83463641/197653765-06ce1b86-5a71-4288-945f-2685fceb4897.PNG">

### Submit

#### a. Output of systemctl status apache2
```
systemctl status apache2
```
<img width="621" alt="output of systemctl status apache2" src="https://user-images.githubusercontent.com/83463641/197654648-62ee39db-01e8-4bed-98c9-91fe9f6b44c1.PNG">

#### b. This is the rendered page shown below.

<img width="233" alt="php page rendered successfully" src="https://user-images.githubusercontent.com/83463641/197655006-e1a4ddc8-c6a6-4d08-a777-197509224d7b.PNG">

### The End
