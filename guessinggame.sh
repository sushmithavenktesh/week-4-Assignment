#!/usr/bin/env bash

echo "[let us know the number of files in current dirctory]"

function input {
	echo "enter the num of files in the current directory"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low"
	else
		echo "Too high"
	fi
	ask
done

echo "Congratulations , number of filesin directory:"
echo "---" && ls -1