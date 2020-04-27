#!/usr/bin/env bash
# File: guessinggame.sh
status=0

filecount() {
	local count_file=0
	let count_file=$(ls -la | grep "^[-]" | wc -l)
	echo $count_file
}
while [ $status -eq 0 ]
do
	echo "Guess How many files are present in current directory ?"
	read response
	correct_count=`filecount`

	if [[ $response =~ ^[0-9] ]]
	then
		
		if [[ $correct_count -eq $response ]]
		then
			echo "Congratulations! you guess is correct. Number of files in current directory is $response"
			let status=1
		elif [[ $correct_count -lt $response ]]
		then
			echo "Your guess is too high please try again !"
		else
			echo "your guess is too low please try again !"
		fi
	else
	echo " You have entered an invalid number ! please enter a valid number"
        fi
done

