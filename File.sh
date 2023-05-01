clear
f1=$1
if [ -f $f1 ]
then
    echo "Name		Roll		Marks		grade">out
	exec < $f1
	while read line
	do
		set -e `echo $line`
		if [ $3 -ge 90 -a $3 -le 100 ]
		then
			echo "$1 $2 $3 O">>out
		elif [ $3 -ge 80 -a $3 -le 89 ]
		then
			echo "$1 $2 $3 E">>out
		elif [ $3 -ge 70 -a $3 -le 79 ]
		then
			echo "$1 $2 $3 A">>out
		elif [ $3 -ge 60 -a $3 -le 69 ]
		then
			echo "$1 $2 $3 B">>out
		elif [ $3 -ge 50 -a $3 -le 59 ]
		then
			echo "$1 $2 $3 C">>out
		else
			echo "$1 $2 $3 F">>out
		fi
	done
fi
cat out
