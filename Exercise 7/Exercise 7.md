# Exercise 7: Bash scrpting and Crontab

## Task:

Create a bash script to run at every hour, saving system memory (RAM) usage to a specified file and at midnight it sends the content of the file to a specified email address, then starts over for the new day.

### Instruction:

Submit the content of your script, cronjob and a sample of the email sent, all in the folder for this exercise.

### Steps

#### 1. Set system time to local time, in the case its Africa/Lagos.

```
sudo timedatectl set-time zone Africa/Lagos
```
<img width="399" alt="1 Set system time to Africa-Lagos" src="https://user-images.githubusercontent.com/83463641/194728282-dd192356-e9ff-4107-9832-b535e226bdce.PNG">


#### 2. Update all apps
```
sudo apt update
```
<img width="556" alt="2 update all apps" src="https://user-images.githubusercontent.com/83463641/194728292-e22ad46a-3ff2-4372-93aa-997fc4fb1786.PNG">


#### 3. Install SSMTP
```
sudo apt-get install ssmtp
```
<img width="483" alt="3 install ssmpt" src="https://user-images.githubusercontent.com/83463641/194728553-b2196600-5a7e-4521-a131-f6d3607fe64b.PNG">


#### 4. Install Mailutils
```
sudo apt-get install mailutils
```
<img width="632" alt="4 install mailutils" src="https://user-images.githubusercontent.com/83463641/194728562-59556420-8468-40ba-b1d2-bda8bc8cea1d.PNG">


#### 5. Install Mutt
```
sudo apt-get install mutt
```
<img width="578" alt="5 install mutt" src="https://user-images.githubusercontent.com/83463641/194728568-af4bc3a1-fc04-4f77-ae49-9b58fe44df6c.PNG">


#### 6. Edit the SSMTP configuration file
```
sudo nano /etc/ssmtp/ssmtp.conf
```
<img width="353" alt="6a Edit ssmtp configuration file" src="https://user-images.githubusercontent.com/83463641/194728576-232d3feb-0e0e-4ff1-a4ce-fb3577a7567c.PNG">


<img width="659" alt="6b Edited ssmtp configuration file" src="https://user-images.githubusercontent.com/83463641/194728583-fe80c895-6b03-43a3-bd7d-54e7b1ea7d22.PNG">

#### 7. Test the configuration by sent a email via the cli
```
sudo echo "Email content" | mail -s "Email Subject" ********@gmail.com
```
![Inked7a test the cnfiguration](https://user-images.githubusercontent.com/83463641/194728710-a38cf390-49cb-4d01-b9fc-ce38b4a5984a.jpg)


<img width="621" alt="7b confg test email" src="https://user-images.githubusercontent.com/83463641/194728605-5a1dd220-4b9e-4083-90bc-e552274d81fc.PNG">


#### 8. Write the email automation script
```
mkdir LogFiles
```
```
cd LogFiles
```
```
nano emaillog.sh
```
<img width="420" alt="8 create dir and automation script file" src="https://user-images.githubusercontent.com/83463641/194728998-25ba7122-7811-452f-b172-7a7e85be0643.PNG">

<img width="874" alt="8b edited script file" src="https://user-images.githubusercontent.com/83463641/194729001-2f17f7ad-e0fd-4e4a-8999-a69e354a5d9b.PNG">

#### 9. Make the bash script executable
```
chmod +x emaillog.sh
```
#### 10. Set up Cronjob and run an every minute test to see if cronjob is working
```
crontab -e
```

<img width="594" alt="10b Cronjob sending email every minutes" src="https://user-images.githubusercontent.com/83463641/194729366-2f3da29f-e4b2-4aee-9614-c1ad3c189d1a.PNG">

#### 11. Edit crontab to send emails at midnight

<img width="574" alt="11 Conjob to send email at 12 midnight" src="https://user-images.githubusercontent.com/83463641/194729372-76bab717-40d3-470a-b51a-547c70d532f4.PNG">

### Instruction:

Script

<img width="874" alt="8b edited script file" src="https://user-images.githubusercontent.com/83463641/194729475-9a25693c-bca6-46cf-89e3-1d5ba60b8d29.PNG">

Cronjob 

<img width="574" alt="11 Conjob to send email at 12 midnight" src="https://user-images.githubusercontent.com/83463641/194729485-330e709b-8b98-4b23-81a6-81c0750fbc73.PNG">

Sample of the email sent at midnight

