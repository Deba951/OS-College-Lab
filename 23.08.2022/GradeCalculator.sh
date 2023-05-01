echo "Enter the total marks(out of 100)-->"
read num

case $num in
100|9[0-9])
	echo "Your total marks is $num and Your grade is 'A'";;
8[0-9])
	echo "Your total marks is $num and Your grade is 'B'";;
7[0-9])
	echo "Your total marks is $num and Your grade is 'C'";;
6[0-9])
	echo "Your total marks is $num and Your grade is 'D'";;
5[0-9])
	echo "Your total marks is $num and Your grade is 'E'";;
*)
	echo "Your total marks is $num and You are failed";;
esac
