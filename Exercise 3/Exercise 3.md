Exercise 3

Create 3 groups – admin, support & engineering and add the admin group to sudoers. 
Create a user in each of the groups. 
Generate SSH keys for the user in the admin group

1. Created 3 groups using the commands:
sudo groupadd Admin
sudo groupadd Support
sudo groupadd Engineering

2. Added Admin to sudoers using the comand
sudo visudo -f /etc/sudoers.d/Admin

Then i edited th vim file like this:

3. I created 3 users:
sudo useradd Martin
sudo useradd Jason
sudo useradd Jane

Then i added each user to each group using the commands:
sudo usermod -G Admin Martin
sudo usermod -G Support Jason
sudo usermod -G Engineering Jane

4. Instruction
Screen shot of /etc/passwd

Screen shot of /etc/group

Screen shot of /etc/sudoers
