#!/bin/bash

sudo groupadd newGroup

#Storing number of users
read -p "Please enter the number of users you want: "  numUsers

for i in $(eval echo {1..$numUsers})
do
       sudo useradd -g newGroup user$i
done
