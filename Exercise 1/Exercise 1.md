# SETTING UP LINUX OPERATING SYSTEM

## A. INSTALLING VIRTUAL BOX
1. I downloded virtual box for Windows host (which is my OS) from virtualbox.org/wiki/Downloads
2. Ran the download and complted the installation following the guided GUI.

## B. CREATING A NEW UBUNTU MACHINE FROM INSTALLED VIRTUAL BOX
1. New Linux machine named 'AltShool' with version Ubuntu 64-bit
2. Allocated 4GB memory
3. Create a virtual hard disk with 12GB recommended size
4. Hard disk file type is VirtualBox Disk Image
5. Dynamic storage allocated on physical hard disk
6. My AltSchool Virtual Machine created!

## C. SETUP UBUNTU 20.04 LTS ON YOUR LOCAL MACHINE USING VAGRANT
1. Download Vagrant from vagrantup.com
2. Find a virtual machine image from Vagrant called boxes in this case Ubuntu 20.04 LTS (Focal64)
3. Switch to a terminal (I used PowerShell in this case), then into a directory i created called AltSchool-Cloud/Vagrant/boxes/Ubunutu20.04-LTS
4. To initialize the vitual machine, run $ vagrant init ubuntu/focal64
5. $ vagrant up (Looks for th enecessary configuration files for creating the virtual machine or downloads it if not found)
6. $ vagrant ssh (This lets us access or log in to the machine. When complete, our machine is ready for use)
7.Customize my Vagrantfile as necessary with private_network set to dhcp (i used vscode to edit my vagrant file)
8. Then i ran 'ifconfig', it didnt run, i was required to install it using apt-install net-tools in sudo (i didn't screenshot this step as i was immdiatley promted to restart my system)
9. After a system restart, i ran ifconfig again and i got the output below. (Then i did a happy dance 💃)
