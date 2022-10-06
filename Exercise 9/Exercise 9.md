# Exercise 9

## Task:

## 193.16.20.35/29

What is the Network IP, number of hosts, range of IP addresses and broadcast IP from this subnet?

### Instruction: 
Submit all your answer as a markdown file in the folder for this exercise.

### Step 1 : Convert the bit-length prefix to quad-dotted format

To understand the netmask, i used the table below:

```
Subnet Masks:   0   128   192   224   240   248  252  254   255
Bit Length:     0    1     2     3     4     5    6    7     8
```

With a bit-length prefix of **29** we convert it to a quad-dotted format which will be **8 8 8 5** which corresponds to a Netmask of **255.255.255.248**

### Step 2 : Determine the total length of the bits T<sub>b</sub> and the number of bits used for subnetting, n.
The total length of the bit is represented using **T<sub>b</sub> = 8**.

```
T<sub>b</sub> = m + n
where m = number of bits left to host.
      n = number of bits used for subnetting.
```
A subnet mask of 248 above corresponds to 5 that is number of bits used for subnetting, n.
With **T<sub>b</sub> = 8 and n = 5**;
m = 8 - 5
**m = 3** which represents the numer of bits left to host.

### Step 3 : Calculate the number of subnets 2<sup>n</sup>.
The number of subnets in our case is: 2<sup>5</sup> = 32
The total number of subnets is **32**

### Step 4 : Calculate the value of the last bit used for subnet masking .
This is represented with the formula (△) = 2<sup>m</sup>; where m = 3


