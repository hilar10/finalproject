#!/bin/bash

typeset -i num=0

echo -e "Start of Program!"
echo -e "Take a guess how many files exists in the current directory!"

(( answer = RANDOM % 100 + 1 ))

while (( guess != answer )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher!"
	elif (( guess > answer )); then
		echo "Lower!"
	fi
done

echo -e "Congrats! You guess it!. \n"

echo "End of Program!"  
