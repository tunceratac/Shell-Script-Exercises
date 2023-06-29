#! /bin/bash
while read -r line #read line by line
do
	echo "" #write the next value on the bottom line
	i=1     #iteration variable
	while [ $i -ne $((line+1)) ] #read the file
	do
		echo -n "*" #Omit echoing trailing new line
		i=$((i+1))  #skip the next line 
	done
done < $1 #access the file to be read.
