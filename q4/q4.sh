#!/usr/bin/bash
sum=0
count=0
mean=0
median=0

function lines {
	wc -l q4_in.txt
}

counter=lines
counter=$(($counter+0))
flag=0
k=0
lastnum=0
z=0
m=1
n=$(($counter/2))

function sorting {

	mv q4_in.txt output.txt
	sort -g output.txt>>q4_in.txt
	rm output.txt
}


function calculatemedian {
	sorting
	flag=$(($counter%2));
}

calculatemedian
for num in $(cat q4_in.txt);
do
	if [ $z -eq $m ]; then
		median=$(($lastnum+$num))
		z=0
	fi
	if [ $k -eq $n ]; then
		if [ $flag -eq $m ]; then
			median=$num
		else
			z=1
			lastnum=$num
		fi
	fi
	sum=$((sum + num))
	count=$((count + 1))
	k=$(($k+1))
done

echo "scale=2 ; $sum / $count" | bc
if [ $flag -eq $m ]; then
	echo "scale=2 ; $median / 2" | bc
else
	echo "$median"
fi


