fact(){
	n=$1
	f=1
	for (( i=1;i<=n;i++ ))
	do
		f=`expr $f \* $i`
	done
	echo "$f"
}
pascal(){
	r=$1
	for (( i=0;i<r;i++ ))
	do
		for (( j=0;j<=(r-i-2);j++ ))
		do
			printf " "
		done
		for (( j=0;j<=i;j++ ))
		do
			c=`fact $i`
			d=`fact $j`
			e=`expr $i - $j`
			f=`fact $e`
			g=`expr $d \* $f`
			h=`expr $c / $g`
			printf "$h "
		done
		printf "\n"
	done
} 
echo Enter the number of rows
read r
pascal $r
