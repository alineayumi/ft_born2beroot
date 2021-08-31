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
1. Installing **Virtual Box** <img src="src/vbox_logo.png" width=25><br  />
	Oracle VM VirtualBox is a free and open-source hosted hypervisor for x86 virtualization, developed by Oracle Corporation. It enables you to run more than one OS at a time. The download file is available [here](https://www.virtualbox.org/wiki/Downloads).
2. [Download](https://www.debian.org/distrib/netinst) **Debian ISO**. The one I used was amd64 image ;) <img src="src/debian-logo-1024x576.png" width=30><br  />
	Debian, also known as Debian GNU/Linux, is a Linux distribution composed of free and open-source software, developed by the community-supported Debian Project, which was established by Ian Murdock on August 16, 1993. It is an operating system for a wide range of devices including laptops, desktops and servers. Users like its stability and reliability since 1993. We provide reasonable default configuration for every package. The Debian developers provide security updates for all packages over their lifetime whenever possible.
	The image downloaded will be used to install the OS at our Virtual Machine in VBox :)
3. Installing Debian on Virtual Machine<br  />
	In order to install Debian in your Virtual Machine and setup encrypted partitions using LVM, I followed [this](https://www.youtube.com/watch?v=2w-2MX5QrQw) youtube video. The video teaches you to set up partitions as it is required on Bonus part :)
	<img src="src/encrypted_partitions.png" width=500><br  />
