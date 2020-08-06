#!/usr/bin/bash

echo "[let us know the number of files in current dirctory]"

function input {
	echo "enter the num of files in the current directory"
	read num
    read=$(ls -1 | wc -l)
}

requestnumber

while [[ $num -ne $read ]]
do
	if [[ $num -lt $read ]] 
	then
		echo "Too low"
	else
		echo "Too high"
	fi
	requestnumber
done

echo "Congratulations , number of files in directory:"
