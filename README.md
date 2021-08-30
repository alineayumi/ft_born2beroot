# Born2beRoot
<img src="src/vm.png" width=400>

## Introduction
This project aims to introduce you to the wonderful world of virtualization.
This is my first Virtual Machine in VirtualBox under specific instructions. At the end of this project I will be able to set up my own operating system implementing strict rules

## Requirements
* Operating System: Debian <img src="src/debian-logo-1024x576.png" width=30>
* Encrypted partitions using LVM (Logical Volume Manager)
* Operating system configured with UFW firewall leaving only port 4242 open
* SSH service running on port 4242 only and block root to connect using it
* Implementation of strong password policy
* Installation and configuration of sudo using strict rules
* In addition to root user, a user with my username present which belogs to sudo and user42 groups
* Creation of simple script called monitoring.sh, developed in bash. At startup the script should display some info in all terminals every 10 minutes.

## Work Flow
