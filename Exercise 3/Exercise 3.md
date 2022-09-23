# Exercise 3

## Task
Create 3 groups – admin, support & engineering and add the admin group to sudoers. 
Create a user in each of the groups. 
Generate SSH keys for the user in the admin group

### Instruction

#### 1. Created 3 groups using the commands as root user:

groupadd Admin

groupadd Support

groupadd Engineering


<img width="376" alt="1" src="https://user-images.githubusercontent.com/83463641/191947784-10325eae-52c1-4cc8-8fb1-07540a613c0a.PNG">


#### 2. Added Admin to sudoers using the comand

visudo -f /etc/sudoers.d/Admin

Then i edited the vim file.

<img width="408" alt="5" src="https://user-images.githubusercontent.com/83463641/191950746-c62e39ba-7322-449a-aa84-536c33ccb8cc.PNG">


#### 3. I created 3 users as root and added each user to each group using the commands:

useradd -g Admin Martin

useradd -g Support Jason

useradd -g Engineering Jane


<img width="364" alt="6" src="https://user-images.githubusercontent.com/83463641/191950250-d4c00a98-4fb4-4945-8e9d-1440afce2582.PNG">


#### 4. Instruction
Screen shot of /etc/passwd

<img width="510" alt="8" src="https://user-images.githubusercontent.com/83463641/191949587-d49543f5-484f-465e-bc70-baf5c60a70da.PNG">

Screen shot of /etc/group

<img width="444" alt="14 - etc-group" src="https://user-images.githubusercontent.com/83463641/191949398-4d41045a-b759-46cd-b12c-66275a90b151.PNG">


Screen shot of /etc/sudoers

<img width="525" alt="15 - etc-sudoers" src="https://user-images.githubusercontent.com/83463641/191949357-de4c8611-b74d-4377-93b8-a19c7dca25f5.PNG">


