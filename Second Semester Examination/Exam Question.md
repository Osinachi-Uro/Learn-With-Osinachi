## Exam Question
You are required to deploy the same Laravel application from your mini project. This
time, the entire deployment steps including installation of packages and dependencies,
configuring your apache webserver etc, will be defined in an ansible playbook and
deployed to atleast one ansible slave.
You should also write a bash script that would install and set up postgresql. This bash
script would be run on your ansible slaves using an ansible playbook.

#### Requirements

1. We should be able to access your deployment using a domain name of your choice(not an IP address).

2. We should be able to test all the endpoints without errors.

4. Your base url may or may not display the default Laravel page.

4. These must be done on virtual machines on any cloud provider of your choice(any Linux distro of your choice).

5. Your application must be encrypted with TLS/SSL.

6. You may or may not define a logical network on the cloud, but extra efforts would be rewarded.

#### Submission

- Push your code to GitHub

- Share your github link on the shared document.

- Share your cloud credentials.

**Note** you can create IAM users for your instructors with the least privilege but enough to view your instances, the firewall rules set on your instance and any logical network if set. If this would require sharing your ssh keys, please do so privately.
