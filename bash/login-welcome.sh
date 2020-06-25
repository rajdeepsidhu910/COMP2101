#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
uname="$USER" #Using the environment variable to get username dynamically
hostname="$(hostname)" #Using the environment variable to get hostname dynamically
day=$(date +%A) #This command tells us about the day of the week
currenttime=$(date +%I:%M\ %p) #It gives us the date 

###############
# Main        #
###############
# if else tests the day name and prints message by adding custom lines
if [ "$day" = Monday ];
then
csay="Welcome to planet $hostname, gretest man $uname!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, voice professional $uname!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, system admin $uname!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, loser $uname!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, cisco expert $uname!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, advertiser $uname!"
else
csay="Welcome to planet $hostname, manager $uname!"
fi
cowsay "$csay It is $currenttime on $day ."
