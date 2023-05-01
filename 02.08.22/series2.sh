fact(){
	n=$1
	f=1
	for (( i=1;i<=n;i++ ))
	do
		f=`expr $f \* $i`
	done
	echo "$f"
}
fact1(){
	x=$1
	n=$2
	sum=0
	for (( i=1;i<=n;i++ ))
	do
		if [ `expr $i % 2` -ne 0 ]
		then
			c=`fact $i`
			s=`echo "scale=0; $x ^ $i" | bc`
			p=`echo "scale=2; $s / $c" | bc`
			sum=`echo "scale=2; $sum + $p"|bc`
		fi
	done
	sum=`echo "scale=2; $sum + 1"|bc`
	echo "$sum"
}
echo "Enter the value of x-->"
read x
echo "Enter the value of n-->"
read n
c=`fact1 $x $n`
echo "The sum of the series is : $c"
