#!/bin/bash 

#Checks if running interactively
if [[ $- == *i* ]]

then
    #Checks if user is using any of the compute nodes and if they are, changes the bash prompt to blue
    if [[ `hostname` == biocomp* ]]; then
       	    PS1='[\[\e[1;34m\]\u@\h\[\e[0m\] \[\e[1;32m\]\W\[\e[0m\]]\$ '
	
	#Else if the user is using the head node, the bash prompt is green
        else
                PS1='[\[\e[1;32m\]\u@\h\[\e[0m\] \[\e[1;34m\]\W\[\e[0m\]]\$ '
        fi
        export PS1

fi	
