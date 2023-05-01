echo "Enter the electricity unit-->"
read unit

if [ $unit -ge 0 -a $unit -le 200 ]
then
	cost=`echo "scale=2; $unit * 0.5"| bc`
	echo "Your electricity bill is--> Rs $cost"
elif [ $unit -ge 201 -a $unit -le 400 ]
then
	extra=`expr $unit - 200`
	c=`echo "scale=2; $extra * 0.65"| bc`
	cost=`echo "scale=2; $c + 100"| bc`
	echo "Your electricity bill is--> Rs $cost"
elif [ $unit -ge 401 -a $unit -le 600 ]
then
	extra=`expr $unit - 400`
	c=`echo "scale=2; $extra * 0.80"| bc`
	cost=`echo "scale=2; $c + 250"| bc`
	echo "Your electricity bill is--> Rs $cost"
else
	extra=`expr $unit - 600`
	c=`echo "scale=2; $extra * 1.25"| bc`
	cost=`echo "scale=2; $c + 425"| bc`
	echo "Your electricity bill is--> Rs $cost"
fi
