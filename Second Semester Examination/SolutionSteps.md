**Note:** 
I used an Ubuntu 22.04 (LTS) x64 as my Linux distro of choice.

I created one playbook [My Playbook] (https://github.com/Osinachi-Uro/AltSchool-Cloud-Exercises/blob/main/Second%20Semester%20Examination/book.yml)

#### Step 1: Create a Droplet on Digital Ocean and link it with my existing domain name

#### Step 2: Set up a local Vagrant Machine and installed the following:

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

Create an ansible playbook with all the tasks required to execute the project. Here is a link to [My Playbook] (https://github.com/Osinachi-Uro/AltSchool-Cloud-Exercises/blob/main/Second%20Semester%20Examination/book.yml)

* To check connectivity of ansible to the remote server i used the following commands:
```
ansible webserver -i inventory -m ping -u root
```

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
