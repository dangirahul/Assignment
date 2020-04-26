#!/usr/bin/env bash
# File: guessinggame.sh
status=0

isfile() {
local count_file=0
if [[ -f "$1" ]]
then 
let count_file=$count_file+1
fi
echo $count_file
}
while [ $status -eq 0 ]
do
echo "Guess How many files are present in current directory ?"
read response
check_file_count=0
file_list=$(ls)
for f in $file_list 
do	
	let check_file_count=$check_file_count+$(isfile $f)
done
if [[ $check_file_count -eq $response ]]
then
echo "Congratulations! you guess is correct. Number of files in current directory is $response"
let status=1
elif [[ $check_file_count -lt $response ]]
then
echo "Your guess is too high please try again !"
else
echo "your guess is too low please try again !"
fi
done

