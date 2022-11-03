Note: 
I used Ubuntu as my Linux distro of choice.
I craeted two playbooks; one for deploying the laravel project, the other for deploying PostgresSQL bashscript

#### Step 1: Create a Droplet on Digital Ocean and link it with my existing domain name

#### Step 2: Launch the droplet console and from the home directory Install Anisible dependencies and Ansible
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

To connect ansible to the remote server
```
ansible webserver -i inventory -m ping -u root
```
```
 ansible-playbook book.yml -i inventory -u root --check
```
* Install Apache
```

```

* Install php 
```

```
```
ansible-playbook book.yml -i inventory -u root --tags php_dep
```
