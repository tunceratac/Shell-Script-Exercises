#! /bin/bash
echo "Enter sequence of numbers followed by end"
max=0
while read numbers #take input from user with loop
do
	if [ $numbers = "end" ] # if input is end, finish the loop
	then
		break
	elif [ $max -lt $numbers ] #if input is number, compare the value with the max variable.
	then			 	#if number greater than max, assign that number  
		max=$numbers 		#to the max
	fi
done
echo "Maximum : "$max  #print the max value.
	
