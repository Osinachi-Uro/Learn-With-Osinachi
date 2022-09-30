# Exercise 6 Implement CIS Benchmark Recommendations

## Task:

Review the CIS benchmark for Ubuntu and try to Implement at least 10 of the recommendations.

### Recommendation 1
Configure software updates
This is an initial setup configuration. It is a Level 1 configuration requirement with content number 1.2 on the CIS benchmark for Ubuntu.
The benchmark requires that a patch management system is configured and maintained to ensure they receive the latest patches and updates.
If a  system's package repositories are misconfigured important patches may not be
identified or a rogue repository could introduce compromised software.

To verify that package repositories are configured correctly run the following commands: #### sudo apt-cache policy

### Recommendation 2
Ensure updates, patches, and additional security software are installed.
Periodically patches are released for included software either due to security flaws or to include additional functionality.
Newer patches may contain security enhancements that would not be available through the latest full update. As a result, it is recommended that the latest software patches be used to
take advantage of the latest functionality.

To verify there are no updates or patches to install: ####  apt -s upgrade

### Recommendation 3
Time Sycronization
This is a special purpose service. It is a Level 1 service requirement with content number 2.1.1.1. Ensure time synchronization is in use, to support time sensitive security mechanisms like
Kerberos and also ensures log files have consistent time records across the enterprise, which aids in forensic investigations.

Use the following commands to determine if systemd-timesyncd is used: #### systemctl is-enabled systemd-timesyncd

### Recommendation 4
Ensure NIS Client is not installed.
This recommendation is under Service Clients. It is a level 1 recommendation with content number 2.2.1. The Network Information Service (NIS), formerly known as Yellow Pages, is a client-server
directory service protocol used to distribute system configuration files. The NIS service is inherently an insecure system that has been vulnerable to DOS attacks,
buffer overflows and has poor authentication for querying NIS maps.Many insecure service clients are used as troubleshooting tools and in testing
environments. Uninstalling them can inhibit capability to test and troubleshoot.

Verify NIS is not installed. Use the following command: #### sudo dpkg -s nis | grep -E '(Status:|not installed)'

### Recommendation 5
Ensure rsh client is not installed.
This is another service client recommendation, with content number 2.2.2. These legacy clients contain numerous security exposures and have been replaced with the
more secure SSH package. Even if the server is removed, it is best to ensure the clients are also removed to prevent users from inadvertently attempting to use these commands 
and therefore exposing their credentials. Many insecure service clients are used as troubleshooting tools and in testing environments. Uninstalling them can inhibit capability to test and troubleshoot.

Verify rsh-client is not installed. Use the following command: #### sudo dpkg -s rsh-client | grep -E '(Status:|not installed)'

### Recommendation 6
Ensure talk client is not installed.
This is another service client recommendation, with content number 2.2.3. The talk software makes it possible for users to send and receive messages across systems through a terminal session. The talk client, which allows initialization of talk sessions, is 
installed by default. The software presents a security risk as it uses unencrypted protocols for communication.

Verify talk is not installed. Use the following command: sudo dpkg -s talk | grep -E '(Status:|not installed)'

### Recommendation 7
Ensure telnet client is not installed.
This is another service client recommendation, with content number 2.2.4. The telnet protocol is insecure and unencrypted. The use of an unencrypted transmission 
medium could allow an unauthorized user to steal credentials. The ssh package provides an encrypted session and stronger security and is included in most Linux distributions.

Verify telnet is not installed. Use the following command:  sudo dpkg -s telnet | grep -E '(Status:|not installed)'


### Recommendation 8
Ensure IP forwarding is disabled.
Pockect redirecting is a Network Configuration parameter, with content number 3.2.2. The net.ipv4.ip_forward and net.ipv6.conf.all.forwarding flags are used to tell the 
system whether it can forward packets or not. Setting the flags to 0 ensures that a system with multiple interfaces (for example, a hard proxy), will never be able to forward packets, and therefore, never serve as a router.

The following commands were ran to verify that the output matches the recommemdation.

(Insert Image here)


### Recommendation 9
Ensure DCCP is disabled
This is another Network Configuration parameter, with content number 3.4.1. The Datagram Congestion Control Protocol (DCCP) is a transport layer protocol that 
supports streaming media and telephony. DCCP provides a way to gain access to congestion control, without having to do it at the application layer, but does not provide insequence delivery. If the protocol is not required, it is recommended that the drivers not be installed to reduce 
the potential attack surface.

The following commands were ran to verify that the output matches the recommemdation.

(Insert Image here)

### Recommendation 10

Ensure iptables packages are installed.
Here is another Network Configuration parameter, with content number 3.5.3.1.1. iptables is a utility program that allows a system administrator to configure the tables 
provided by the Linux kernel firewall, implemented as different Netfilter modules, and the chains and rules it stores. Different kernel modules and programs are used for different 
protocols; iptables applies to IPv4, ip6tables to IPv6, arptables to ARP, and ebtables to Ethernet frames. A method of configuring and maintaining firewall rules is necessary to configure a Host 
Based Firewall.

Run the following command to verify that iptables and iptables-persistent are installed:  sudo apt list iptables iptables-persistent | grep installed

(Insert Image here)


## The End
