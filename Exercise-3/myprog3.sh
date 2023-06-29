#! /bin/bash
dir="." #current directory
counter=0
if [ $# -eq 1 ] #if a different directory is given, use it.
then
	dir=$1 # new directory.
fi
if [ -d $dir ] #check if the directory exist.
then
	zeroFile=$(find $dir -size 0 | wc -l) #find the number of file with size 0.
	if [ $zeroFile -gt 0 ]  # if the number of file with size 0 greater than 0.
	then			#so there is/are file(s) in directory with size 0.
		find $dir -size 0 |xargs rm  #remove them.
	fi
	echo $zeroFile" zer0-length files are removed from the directory: "$dir 
else
	echo "Directory is not valid." #if directory not valid than give error.
	exit 1
fi
