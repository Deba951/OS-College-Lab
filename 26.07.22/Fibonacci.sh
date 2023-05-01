echo "Enter the range-->"
read n
a=0
b=1
c=0
n=`expr $n - 2`
echo "The Fibonacci series is-->"
echo $a
echo $b

while [ $n -gt 0 ]
do
c=`expr $a + $b`
a=$b
b=$c
echo $c
n=`expr $n - 1`
done
