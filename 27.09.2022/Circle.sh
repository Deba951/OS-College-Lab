clear
echo "Enter the radius-->"
read r
for(( i=0;i<=360;i+=5 ))
do
	c=`echo "scale=4; 3.14 / 180 * $i" |bc|awk '{ print cos ($1) }'`
	s=`echo "scale=4; 3.14 / 180 * $i" |bc|awk '{ print sin ($1) }'`
	
	x=`echo "scale=4; $r * $c" |bc|awk '{ print int ($1) }'`
	y=`echo "scale=4; $r * $s" |bc|awk '{ print int ($1) }'`
	
	x=`expr $x + 10`
	y=`expr $y + 10`
	
	tput cup $x $y
	echo "*"
done
