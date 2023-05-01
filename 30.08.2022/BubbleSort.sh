echo "Enter the size of the array-->"
read n
echo "Enter the array elements one by one-->"
for (( i=0;i<n;i++ ))
do
	read a[i]
done
echo "The array before sorting-->"
for (( i=0;i<n;i++ ))
do
	echo ${a[i]}
done
for (( i=0;i<n-1;i++ ))
do
	for (( j=0;j<n-i-1;j++ ))
	do
		if [ ${a[j]} -gt ${a[j+1]} ]
		then
			temp=${a[j]}
			a[j]=${a[j+1]}
			a[j+1]=$temp
		fi
	done
done
echo "The array after sorting-->"
for (( i=0;i<n;i++ ))
do
	echo ${a[i]}
done
