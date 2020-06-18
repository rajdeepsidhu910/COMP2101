#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Input a 1 ? " firstnum
read -p "Input a 2 ? " secondnum #It is used to get three numbers from the user.
read -p "Input a 3 ? " thirdnum
sum=$((firstnum + secondnum + thirdnum)) #It helps in the addition of the sum of the three numbers and then output storing it into variable
product=$((firstnum * secondnum * thirdnum))  # This command adds the product of three commands into a variable
# summary
cat <<EOF
The sum of $firstnum , $secondnum and $thirdnum numbers is $sum
The product of $firstnum , $secondnum and $thirdnum numbers is $product
EOF
