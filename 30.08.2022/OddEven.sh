echo "Enter the size of the array-->"
read n
echo "Enter the array elements one by one-->"
for (( i=0;i<n;i++ ))
do
	read a[i]
done
j=0
k=0
for (( i=0;i<n;i++ ))
do
	if [ `expr ${a[i]} % 2` -eq 0 ]
	then
		even[j]=${a[i]}
		j=`expr $j + 1`
	else
		odd[k]=${a[i]}
		k=`expr $k + 1`
	fi
done
echo "Even elements are-->"
for (( i=0;i<j;i++ ))
do
	echo ${even[i]}
done
echo "Odd elements are-->"
for (( i=0;i<k;i++ ))
do
	echo ${odd[i]}
done
