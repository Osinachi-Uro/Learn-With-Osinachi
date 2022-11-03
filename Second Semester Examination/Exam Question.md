## Exam Question
2
You are required to deploy the same Laravel application from your mini project. This
3
time, the entire deployment steps including installation of packages and dependencies,
4
configuring your apache webserver etc, will be defined in an ansible playbook and
5
deployed to atleast one ansible slave.
6
You should also write a bash script that would install and set up postgresql. This bash
7
script would be run on your ansible slaves using an ansible playbook.
8
​
9
#### Requirements
10
1. We should be able to access your deployment using a domain name of your
11
choice(not an IP address).
12
2. We should be able to test all the endpoints without errors.
13
3. Your base url may or may not display the default Laravel page.
14
4. These must be done on virtual machines on any cloud provider of your
15
choice(any Linux distro of your choice).
16
5. Your application must be encrypted with TLS/SSL.
17
6. You may or may not define a logical network on the cloud, but extra efforts would
18
be rewarded.
19
​
20
#### Submission
21
​
22
- Push your code to GitHub
23
- Share your github link on the shared document.
24
- Share your cloud credentials.
25
​
26
**Note** you can create IAM users for your instructors with the least privilege but enough
27
to view your instances, the firewall rules set on your instance and any logical network if
28
set. If this would require sharing your ssh keys, please do so privately.
