#!/bin/bash

sudo groupadd newGroup

for i in {1..5}
    do
        sudo useradd -g newGroup user$i
    done