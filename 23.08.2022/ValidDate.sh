leap(){
	year=$1
	if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ]
	then 
		echo 1
	else
		echo 0
	fi
}
echo "Enter the date-->"
read d
echo "Enter the month-->"
read m
echo "Enter the year-->"
read y
if [ $d -eq 0 -o $d -gt 31 -o $m -eq 0 -o $m -gt 12 -o $y -le 0 ]
then
	echo "The Date is invalid!!!"
fi

c=`leap $y`
if [ $c -eq 1 -a $d -le 29 -a $m -eq 2 ]
then 
	echo "Valid Date"
else
	echo "Invalid Date"
fi

case $m in
1|3|5|7|8|10|12)
	if [ $d -gt 31 ]
	then
		echo "Valid Date"
	else
		echo "Invalid Date"
	fi
	;;
4|6|9|11)
	if [ $d -gt 30 ]
	then
		echo "Valid Date"
	else
		echo "Invalid Date"
	fi
	;;
esac
