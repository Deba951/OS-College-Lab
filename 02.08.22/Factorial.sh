fact(){
	n=$1
	f=1
	for (( i=1;i<=n;i++ ))
	do
		f=`expr $f \* $i`
	done
	echo "$f"
}
echo Enter a number
read n
if [ $n -lt 0 ]
then
	echo "Enter positive number only"
else
	c=`fact $n`
	echo "Factorial of $n is-->"
	echo "$c"
fi
