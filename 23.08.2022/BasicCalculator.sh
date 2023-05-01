echo "Enter 1 for Addition"
echo "Enter 2 for Subtraction"
echo "Enter 3 for Multiplicaton"
echo "Enter 4 for Division"
echo "Enter 5 for Modulo"
echo "Enter your choice--> "
read ch
case $ch in
1)
	echo "Enter two numbers for Addition-->"
	read a b
	c=`expr $a + $b`
	echo "The sum is-->$c"
	;;
2)
	echo "Enter two numbers for Subtraction-->"
	read a b
	c=`expr $a - $b`
	echo "The subtraction is-->$c"
	;;
3)
	echo "Enter two numbers for Multiplication-->"
	read a b
	c=`expr $a \* $b`
	echo "The multiplication is-->$c"
	;;
4)
	echo "Enter two numbers for Division-->"
	read a b
	c=`expr $a / $b`
	echo "The division is-->$c"
	;;
5)
	echo "Enter two numbers for Modulo-->"
	read a b
	c=`expr $a % $b`
	echo "The modulo is-->$c"
	;;
*)
	echo "Invalid Choice!!!"
	;;
esac
