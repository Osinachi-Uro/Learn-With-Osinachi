# Exercise 8 Ansible

## Task:
Create an Ansible Playbook to setup a server with Apache.
The server should be set to the Africa/Lagos Timezone
Host an index.php file with the following content, as the main file on the server:

```

<?php
date("F d, Y h:i:s A e", time());
?>

```

### Instruction:
Submit the Ansible playbook, the output of systemctl status apache2 after deploying the playbook and a screenshot of the rendered page

### Note: I decided to execute this exercise using my local host server - Vagrant.

#### Step 1: I created 2 servers and called one of them 'unwara' and 'ozizza'
```
vagrant init ubuntu/focal64
```
```
vagrant up
```

<img width="583" alt="2 virtual servers" src="https://user-images.githubusercontent.com/83463641/195208280-9a5f1373-f8d7-402a-9f80-2f649b693da7.PNG">


#### Step 2: The plan is the use server 'unwara' to set up server 'ozizza'. 

So i cd into the folder called 'unwara' the ssh into the server with the server id:

```
vagrant ssh ae62630
```

#### Step 3: In server 'unwara', install all the required dependency, in this case python.
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


#### Step 5: From server 'unwara' generate ssh key
```
ssh-keygen
```
<img width="660" alt="3  ssh keygen" src="https://user-images.githubusercontent.com/83463641/195213845-4be4edbf-0bcf-4277-b742-b1f9b9c92505.PNG">

#### Step 6: Modify the ssh config file of the target server, in this case 'ozizza'
This action is taken to enable the server allow copying of ssh keys by changing password authetication to yes and save
```
sudo nano /etc/ssh/sshd-config
```

#### Step 7: After saving the edited the ssh config file, restart the service using:
```
sudo systemctl restart sshd
```

#### Step 1

#### Step 1

#### Step 1

#### Step 1

