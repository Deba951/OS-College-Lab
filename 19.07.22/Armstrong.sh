echo "Enter a number"
read n
m=$n
a=$n
sum=0
c=0
while [ $n -gt 0 ]
do
	c=`expr $c + 1`
	n=`expr $n / 10`
done
while [ $m -gt 0 ]
do
	rem=`expr $m % 10`
	x=`echo "scale=0; $rem ^ $c" | bc`
	sum=`expr $sum + $x`
	m=`expr $m / 10`
done
if [ $sum -eq $a ]
then
	echo "It is an armstrong number"
else
	echo "It is not an armstrong number"
fi
