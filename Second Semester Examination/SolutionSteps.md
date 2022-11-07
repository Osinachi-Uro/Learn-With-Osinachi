**Note:** 
I used an Ubuntu 22.04 (LTS) x64 as my Linux distro of choice.

I created one playbook [My Playbook](https://github.com/Osinachi-Uro/AltSchool-Cloud-Exercises/blob/main/Second%20Semester%20Examination/book.yml)

#### Step 1: Set up a local Vagrant Machine and installed the following:

```
apt install -y software-properties-common python3-apt
```
```
apt install -y ansible
```
<img width="665" alt="1  Install anisible dependencies" src="https://user-images.githubusercontent.com/83463641/199499366-d5ef55d2-a6f0-4c88-91a1-3a81a9daf460.PNG">

* Confirm Ansible is installed
```
ansible --version
```
<img width="708" alt="3  Confirm ansible is installed" src="https://user-images.githubusercontent.com/83463641/199501709-add3fc98-8b5f-4378-a226-3c8b24df5fa7.PNG">

Set up SSH connection for the remote server using 
```
ssh keygen
```
<img width="530" alt="4  Create ssh key and copy key into droplet while creating" src="https://user-images.githubusercontent.com/83463641/200427641-3d987357-4184-4a8f-b551-ec0cb7cb018b.PNG">

#### Step 2: Create a Droplet on Digital Ocean using the public key from the local server and link it with my existing domain name
Establish a connection between the two servers by running 
```
vagrant root@ServerIP
```

Create an ansible playbook with all the tasks required to execute the project. Here is a link to [My Playbook](https://github.com/Osinachi-Uro/AltSchool-Cloud-Exercises/blob/main/Second%20Semester%20Examination/book.yml)

* To check connectivity of ansible to the remote server i used the following commands:
```
ansible webserver -i inventory -m ping -u root
```
<img width="479" alt="5b  connection successful" src="https://user-images.githubusercontent.com/83463641/200427791-f76bc3fa-2952-45c6-aa7b-ee4d8d1b680d.PNG">

* To run my ansible playbook i used the following command
```
 ansible-playbook book.yml -i inventory -u root --check
```
* To run a task or group of tasks, i assigned tags to them and ran them as follows:
```
ansible-playbook book.yml -i inventory -u root --tags php_dep
```
* To run a particular task only, i used the name of the task and ran it as follows:
```
ansible-playbook book.yml -i inventory -u root --start-at-task="setup laravel config cache"
```
### 
