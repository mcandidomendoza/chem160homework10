#!/bin/bash
if [ ! -f $1 ]
then
	echo "No file found"
fi
intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]] ; then
	echo "Second argument must be an integer"
fi
echo "Head: "
head -n $2 $1
echo "Tail: "
tail -n $2 $1
