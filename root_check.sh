#! /bin/bash

if ((EUID != 0)); then
	echo "This script can only run as root"
	exit 1

else
	groupadd newGroup

	read -p "Please enter the number of users you wish to add: " numUsers

	for i in $(eval echo {1..$numUsers})
	do
		useradd -g newGroup user$i
	done

fi
