#!/bin/bash

# author: victor hugo candido

sumok=0
sumwrong=0
for i in `seq 1 70`
do
	mg=$(sed -n "${i}p" meu_gabarito)
	go=$(sed -n "${i}p" gabarito_oficial)

	if [ $mg == $go ]
	then
		echo $i":" $mg"|"$go "OK"
		sumok=$(($sumok+1))
	else
		echo $i":" $mg"|"$go "WRONG"
		sumwrong=$(($sumwrong+1))
	fi
done

echo ""
echo "OK: $sumok"
echo "WRONG: $sumwrong"
