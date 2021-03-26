#!/bin/bash

NUMBERS='^[0-9]+$'
NUMBER=$1

if  test -z "$1"; then
	read NUMBER
fi

if ! [[ $NUMBER =~ $NUMBERS ]] ; then
   echo "Error: Input is not a natural number (incl. 0)."; exit 1
elif [ $NUMBER -eq 0 ] ; then
	echo "$NUMBER is not a prime number, it is divisible by all numbers."; exit 1
elif [ $NUMBER -eq 1 ] ; then
	echo "$NUMBER is not a prime number, it does not have two positive factors."; exit 1
fi

for (( i=2; i<$NUMBER ; ++i )) ;
do
	MODULO=$(expr $NUMBER % $i)
	[ $MODULO -eq 0 ] && echo "$NUMBER is not a prime number, it is divisible by $i." && exit 1
done

echo "$NUMBER is a prime number."