echo "Enter the range"
read n
for (( i=0;i<=n;i++ ))
do
if [ $i -eq 0 -o $i -eq 1 ]
then
	continue;
fi
if [ $i -eq 2 ]
then
	echo "$i"
	continue
fi
flag=0
for (( j=3;j*j<=n;j++ ))
do
	if [ `expr $i % $j` -eq 0 ]
	then
		flag=1
		break
	fi
done
if [ $flag -eq 0 ]
then
	echo "$i"
fi
done
