fact(){
	x=$1
	n=$2
	sum=0
	for (( i=0;i<n;i++ ))
	do	
		pow=`expr $i \* 2`
		s=`echo "scale=0; $x ^ $pow" | bc`
		sum=`expr $sum + $s`
	done
	echo "$sum"
}
echo "Enter the value of x-->"
read x
echo "Enter the value of n-->"
read n
c=`fact $x $n`
echo "The sum of the series is : $c"
