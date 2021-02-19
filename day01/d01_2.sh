#!/bin/bash
#rpm-check.sh
#taget: describe,list and confirm rpm package, which it can be installed or not.
#save the result in a file
#use a code_block to show

SUCCESS=0
E_NOARGS=65

#arg1 will be null
if [ -z "$1" ]; then
	echo "Usage: `basename $0` rpm-file" 
	exit $E_NOARGS
fi

{
	echo
	echo "Archive Description:"
	rpm -qpi $1	#check rpm package infos
	echo "Archive Listing:"
	rpm -qpl $1 #listing archive
	echo
	rpm -i --test $1 #check if rpm package can be installed or not
	if [ "$?" -eq $SUCCESS ]; then
		echo "$1 can be installed."
	else
		echo "$1 cannot be installed."
	fi
	echo
} > "$1.test" #print code_block resulte into a rpm_package.test file

echo "Results of rpm test in file "$1.test"

#check rpm man help to see rpm parameters

exit 0
