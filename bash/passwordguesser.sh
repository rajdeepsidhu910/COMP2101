#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

success="Login is Successful."
fail="Error. Try Again."
referenceString="Password" #It creates a variable to store password to compare with input
read -s -p "Enter the Password:" myString #It gets userinput for password and saves into $myString
echo
#This condition is used five times to check input is valid or not and  $referenceString is used for comparison here.
if [ $myString = $referenceString ]; then
 echo "$success"
 echo
 else
 echo "$fail"
 read -s -p "Try again:::" myString
 if [ $myString = $referenceString ]; then
  echo "$success"
  echo
  else
  echo
  echo "$fail"
  read -s -p "Try again:::" myString
  if [ $myString = $referenceString ]; then
 echo "$success"
 echo
 else
 echo
 echo "$fail"
   read -s -p "Try again:::" myString
if [ $myString = $referenceString ]; then
  echo "$success"
  echo
  else
  echo
  echo "$fail"
  read -s -p "Try again:::" myString
  if [ $myString = $referenceString ]; then
 echo "$success"
 echo
 else
 echo
 echo "Failed attempt. Try again next time.."
fi
fi
fi
fi
fi
