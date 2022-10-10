# Exercise 1: Setting up VirtualBox and Vagrant

## Task: 
Setup Ubuntu 20.04 LTS on your local machine using Vagrant

### Instruction: 
Customize your Vagrantfile as necessary with private_network set to dhcp
Once the machine is up, run ifconfig and share the output in your submission along with your Vagrantfile in a folder for this exercise.


# SETTING UP LINUX OPERATING SYSTEM


## A. INSTALLING VIRTUAL BOX
1. I downloded virtual box for Windows host (which is my OS) from [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
2. Ran the download and complted the installation following the guided GUI.


## B. CREATING A NEW UBUNTU MACHINE FROM INSTALLED VIRTUAL BOX

1. New Linux machine named 'AltShool' with version Ubuntu 64-bit                                                                                                       

<img width="370" alt="Capture 1" src="https://user-images.githubusercontent.com/83463641/189770731-437afbf6-1723-41f4-b13a-4bad2486628f.PNG">

2. Allocated 4GB memory 

<img width="315" alt="Capture 2" src="https://user-images.githubusercontent.com/83463641/189770805-39e68bdb-02d3-4f71-9b3c-b5eadcf2020a.PNG">

3. Create a virtual hard disk with 12GB recommended size

<img width="312" alt="Capture 3" src="https://user-images.githubusercontent.com/83463641/189771688-3c305004-007b-4025-8bfa-f3e25a3a52b9.PNG">

4. Hard disk file type is VirtualBox Disk Image

<img width="326" alt="Capture 4" src="https://user-images.githubusercontent.com/83463641/189771810-60316494-1f9a-4c07-9a94-4a5bd0f11670.PNG">

5. Dynamic storage allocated on physical hard disk

<img width="322" alt="Capture 5" src="https://user-images.githubusercontent.com/83463641/189771881-b6ea94de-1fcb-4fc8-be4e-ba8da7425b17.PNG">

6. My AltSchool Virtual Machine created! 💃

<img width="959" alt="Capture 6" src="https://user-images.githubusercontent.com/83463641/189771952-2dff46d8-615d-47c2-9fa9-cd13762380f5.PNG">


## C. SETUP UBUNTU 20.04 LTS ON YOUR LOCAL MACHINE USING VAGRANT

1. Download Vagrant from [Vagrant Up](https://www.vagrantup.com)

<img width="839" alt="Capture-1" src="https://user-images.githubusercontent.com/83463641/189772175-d1d5341a-a716-482c-9ae3-9c2793883363.PNG">

2. Find a virtual machine image from [Vagrant](https://app.vagrantup.com/boxes/search) called boxes in this case Ubuntu 20.04 LTS (Focal64)

<img width="884" alt="vagrant box -focal" src="https://user-images.githubusercontent.com/83463641/189772521-656a1bc3-8df3-4f43-808f-939e85652f44.PNG">

3. Switch to a terminal (I used PowerShell in this case), then changed into a directory I created called AltSchool-Cloud/Vagrant/boxes/Ubunutu20.04-LTS. Then to initialize the vitual machine, I ran $ vagrant init ubuntu/focal64

<img width="511" alt="Capture 2" src="https://user-images.githubusercontent.com/83463641/189772994-8f195292-807f-47db-8701-86c0df02694f.PNG">

4. Then $ vagrant up (This looks for the necessary configuration files for creating the virtual machine or downloads it if not found)

<img width="597" alt="Capture 3" src="https://user-images.githubusercontent.com/83463641/189773311-fdd22deb-446b-4f18-b730-ee48d9ff5dde.PNG">

5. Then $ vagrant ssh (This lets us access or log in to the machine. When complete, our machine is ready for use)

<img width="612" alt="Capture 4" src="https://user-images.githubusercontent.com/83463641/189773375-36fd39e2-7fef-4d11-8ec2-0639688c730d.PNG">

6. Customize my Vagrantfile as necessary with private_network set to dhcp (i used vscode to edit my vagrant file)

<img width="697" alt="DHCP Change 2" src="https://user-images.githubusercontent.com/83463641/194959660-1dfa9007-6e42-40d0-b370-9536f77010ef.PNG">

7. Then i ran 'ifconfig', it didnt run, i was required to install it using apt-install net-tools in sudo (i didn't screenshot this step as i was immdiatley promted to restart my system)

9. After a system restart, i ran ifconfig again and i got the output below. (Then i did my happy dance 💃)

<img width="448" alt="ifconfig output" src="https://user-images.githubusercontent.com/83463641/189773561-058ff0d0-5b3c-47aa-98eb-75ef46d7fcb7.PNG">


# THE END
