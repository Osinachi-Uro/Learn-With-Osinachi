#H1

##H2 1. INSTALLING VIRTUAL BOX
a. I downloded virtual box for Windows host (which is my OS) from virtualbox.org/wiki/Downloads
b. Ran the download and complted the installation following the guided GUI.

##H2 2. CREATING A NEW UBUNTU MACHINE FROM INSTALLED VIRTUAL BOX
a. New Linux machine named 'AltShool' with version Ubuntu 64-bit
b. Allocated 4GB memory
c. Create a virtual hard disk with 12GB recommended size
d. Hard disk file type is VirtualBox Disk Image
e. Dynamic storage allocated on physical hard disk
f. My AltSchool Virtual Machine created!

##H2 3. SETUP UBUNTU 20.04 LTS ON YOUR LOCAL MACHINE USING VAGRANT
a. Download Vagrant from vagrantup.com
b. Find a virtual machine image from Vagrant called boxes in this case Ubuntu 20.04 LTS (Focal64)
c. Switch to a terminal (I used PowerShell in this case), then into a directory i created called AltSchool-Cloud/Vagrant/boxes/Ubunutu20.04-LTS
d. To initialize the vitual machine, run $ vagrant init ubuntu/focal64
e. $ vagrant up (Looks for th enecessary configuration files for creating the virtual machine or downloads it if not found)
f. $ vagrant ssh (This lets us access or log in to the machine. When complete, our machine is ready for use)
g.Customize my Vagrantfile as necessary with private_network set to dhcp (i used vscode to edit my vagrant file)
h. Then i ran 'ifconfig', it didnt run, i was required to install it using apt-install net-tools in sudo (i didn't screenshot this step as i was immdiatley promted to restart my system)
g. After a system restart, i ran ifconfig again and i got the output below. (Then i did a happy dance)
