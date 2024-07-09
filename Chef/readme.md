# About
Chef is basically a Pull-Based Configuration Management Tool. 

- This Chef folder basically contains all the code in ruby that I write in Amazon Linux using Chef.

- As for now I'm writing the code and performing the tasks manually, but soon we will automate it using Chef.

## Installation

Switch to root user
```bash
  sudo su
```
To install Chef on CentOS

```bash
  wget https://packages.chef.io/files/stable/chef-workstation/0.4.2/el/7/chef-workstation-0.4.2-1.el6.x86_64.rpm
```
Check if package is uploaded in your machine
```bash
  ls
```              
Now to install Chef, version may differ 
```bash
  yum install chef-workstation-0.4.2-1.e16.x86 64.rpm -y
```

## OHAI Commands

To see all the Specifications, Configuration or data of a node
```bash
  ohai
```
To check ip address of a node using ohai
```bash
  ohai ipaddress
```
To check memory/total of a node using ohai
```bash
  ohai memory/total
```
To check cpu of a node 
```bash
  ohai cpu/0/mhz
```
