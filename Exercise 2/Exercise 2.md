# Exercise 2 Brief

## Task: 
Research online for 10 more Linux commands besides those already mentioned in this module. Explain what each command is used for with examples of how to use each, and example screenshots of using each of them.

### Instruction: 
Submit your work in a folder for this exercise in your altschool-cloud-exercises project. You will need to learn how to embed images in markdown files.


# 10 LINUX COMMANDS

1.  #### Create symbolic link to a linkname. 
This command belongs to the file and directory commad category. A symbolic link, is a special type of file that points to another file or directory.
In the following example, I am creating a symbolic link named alink.txt to a file named file.txt.

$ ln -s file.txt alink.txt

To verify that the symbolic link was successfully created, i used the command below:

$ ls -l alink.txt


<img width="381" alt="1" src="https://user-images.githubusercontent.com/83463641/191871271-09d38950-b7ea-417f-b17b-4b234a8db7e7.PNG">


2. #### Display I/O statistics
This command helps monitor system input/output device loading by observingthe time the devices are active in relation to their average transfer rates.
Run the command:

$ iostat


<img width="486" alt="2" src="https://user-images.githubusercontent.com/83463641/191871393-f3a33f69-62e1-4c0d-9b1a-73c986219c37.PNG">


3. #### Display virtual memory statistics

$ vmstat


<img width="474" alt="3" src="https://user-images.githubusercontent.com/83463641/191871517-407f5acc-bec0-4ec6-a3e6-20b22aa14485.PNG">


4. #### Display processor related statistics

$ mpstat


<img width="553" alt="4" src="https://user-images.githubusercontent.com/83463641/191871545-2e9a1545-cac9-4ce4-af87-84623e914031.PNG">


5. #### Display CPU information

This command provides a long list of cpu information including processor, vendor, model, core, etc (Image below)

$ cat /proc/cpuinfo


<img width="648" alt="5" src="https://user-images.githubusercontent.com/83463641/191871610-ae5c3109-4d94-4654-ac59-72bd80abd4cf.PNG">


6. #### Display memory information. This command displays the memory infomation of the computer

$ cat /proc/meminfo


<img width="319" alt="6" src="https://user-images.githubusercontent.com/83463641/191871663-984981d8-31e4-4c3b-8ce8-7d94de4045b4.PNG">


7. #### Show system host name
$ hostname


<img width="223" alt="7" src="https://user-images.githubusercontent.com/83463641/191871758-56732d50-a39e-4c18-8330-ec510a60cc89.PNG">


8. #### Display all local IP addresses of the host.
$hostname -I


<img width="257" alt="8" src="https://user-images.githubusercontent.com/83463641/191871803-0b28863f-4abd-4346-bea1-d9d7fdd3564d.PNG">


9. #### Show system reboot history
$last reboot


<img width="420" alt="9" src="https://user-images.githubusercontent.com/83463641/191871873-d72699e2-c4e9-46fe-b8e5-250b95e3cae5.PNG">


10. #### Display the network address of the host name.
$hostname -i


<img width="238" alt="10" src="https://user-images.githubusercontent.com/83463641/191871920-92ee9591-c460-47f0-866f-ad335be8e3dd.PNG">


### The End
