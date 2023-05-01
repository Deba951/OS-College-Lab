a=$1
b=$2
c=$3
echo "greatest of this three is-->"
if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo "$a"
	else
		echo "$c"
	fi
else
	if [ $b -gt $c ]
	then
		echo "$b"
	else
		echo "$c"
	fi
fi

echo "smallest of this three is-->"
if [ $a -lt $b ]
then
	if [ $a -lt $c ]
	then
		echo "$a"
	else
		echo "$c"
	fi
else
	if [$b -lt $c]
	then
		echo "$b"
	else
		echo "$c"
	fi
fi
