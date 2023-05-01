echo "Enter a number-->"
read n
if [ $n -eq 0 -o $n -eq 1 ]
then
	echo "It is not a prime number"
fi
if [ $n -eq 2 ]
then
	echo "It is a prime number"
fi
flag=0
for (( i=3;i*i<=n;i++ ))
do
	if [ `expr $n % $i` -eq 0 ]
	then
		flag=1
		break
	fi
done
if [ $flag -eq 0 ]
then
	echo "It is a prime number"
else
	echo "It is not a prime number"
fi
