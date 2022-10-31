#!/bin/bash -x

heads=0;
tails=1;

headCount=0;
tailCount=0;

while [[ $headCount -lt 21 && $tailCount -lt 21 ]]
do
	coinFlip=$((RANDOM%2))

	if [ $coinFlip -eq $heads ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
done

if [ $headCount -eq 21 ]
then
	wonBy=$(($headCount-$tailCount))
	echo " heads won the game by $wonBy"
else
	wonBy=$(($tailCount-$headCount))
	echo " tails won the game by $wonBy"
fi
