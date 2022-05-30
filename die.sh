#!/bin/bash

d1=0;
d2=0;
d3=0;
d4=0;
d5=0;
d6=0;
array=()
while [ $d1 -lt 10 -a $d2 -lt 10 -a $d3 -lt 10 -a $d4 -lt 10 -a $d5 -lt 10 -a $d6 -lt 10 ]
do
	randomCheck=$((1 + RANDOM%6 ))
	case  $randomCheck in
		1)
			((d1++))
			array[1]=$d1
			;;
		2)
			((d2++))
			array[2]=$d2
			;;
		3)
			((d3++))
			array[3]=$d3
			;;
		4)
			((d4++))
			array[4]=$d4
			;;
		5)
			((d5++))
			array[5]=$d5
			;;
		6)
			((d6++))
			array[6]=$d6
			;;
	esac
done
echo "Number of Dice Repeat 	: "${array[@]}
echo "Faces of Dice are 	: "${!array[@]}
max=0;
count=0;
for (( j=1; j<=((${#array[@]})); j++ ))
do
	if (( $max<array[$j] ))
	then
		max=${array[$j]}
		count=$j
	fi
done
echo "Face $count is Repeated Maximum Times : $max"
min=10;
count1=0;
for (( i=1; i<=((${#array[@]})); i++ ))
do 
	temp=${array[$i]}
	if (($min > $temp))
	then
		min=${array[i]}
		count1=$i
	fi
done
echo "Face $count1 is Repeated Minimum Times : $min"
