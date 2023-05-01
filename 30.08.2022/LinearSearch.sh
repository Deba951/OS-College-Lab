echo "Enter the size of the array-->"
read n
echo "Enter the array elements one by one-->"
for (( i=0;i<n;i++ ))
do
	read a[i]
done
echo "Enter the element to be search-->"
read element
flag=0
for (( i=0;i<n;i++ ))
do
	if [ ${a[i]}  -eq $element ]
	then
		flag=1
		echo "${a[i]} is present at index `expr $i + 1`"
		break
	fi
done
if [ $flag -eq 0 ]
then
	echo "Element is not found in the array"
fi
