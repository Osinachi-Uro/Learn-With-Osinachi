# Exercise 2 Brief

## Task: 
Research online for 10 more linux commands aside the ones already mentioned in this module. Submit using your altschool-cloud-exercises project, explaining what each command is used for with examples of how to use each and example screenshots of using each of them.

### Instruction: 
Submit your work in a folder for this exercise in your altschool-cloud-exercises project. You will need to learn how to embed images in markdown files.


# 10 LINUX COMMANDS
File and directory Command

1.  # Create symbolic link to a linkname. 
This command belongs to the file and directory commad category. A symbolic link, is a special type of file that points to another file or directory.
In the following example, I am creating a symbolic link named alink.txt to a file named file.txt.

ln -s file.txt alink.txt
To verify that the symbolic link was successfully created, i used the command below:
ls -l alink.txt

The output is: ...

Performance Monitoring and Statistics

2. # Display I/O statistics
This command helps monitor system input/output device loading by observingthe time the devices are active in relation to their average transfer rates.
Run the command $ iostat

Output is below:

3. # Display virtual memory statistics
vmstat

4. # Display processor related statistics
mpstat

Hardware Information

5. # Display CPU information
cat /proc/cpuinfo
This command provides a long list of cpu information includingprocessor, vendor, model, core, etc (Image below)


6. # Display memory information
cat /proc/meminfo

System Information

7. # Show system host name
hostname

8. # Display all local IP addresses of the host.
hostname -I

9. # Show system reboot history
last reboot

Networking Information

10. # Display the network address of the host name.
hostname -i

