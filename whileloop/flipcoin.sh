#! /bin/bash -x

echo "flip Coin Simulator"

Head=0
Tail=0
while [ $Head != 11 ] && [ $Tail != 11 ]
do
	if [ $((RANDOM%2)) -eq 1 ]
	then
	    ((Head++))
	else
	    ((Tail++))
	fi
done

if [ $Head -eq 11 ]
then
    echo Head wins 11 times
else
    echo Tail wins 11 times
fi
