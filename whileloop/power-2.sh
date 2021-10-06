#! /bin/bash -x

read -p "Enter the nth number:"  number

counter=0

result=0


while [ $counter -le $number ] && [ $result -lt 256 ]
do
	result=$((2**counter))

	echo $result

	counter=$((counter+1))
done
