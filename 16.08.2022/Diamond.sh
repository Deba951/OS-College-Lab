pattern(){
	n=$1
	for (( i=1;i<=n;i++ ))
	do
		for (( j=1;j<=(n-i);j++ ))
		do
			printf " "
		done
		for (( j=1;j<=2*i-1;j++ ))
		do
			printf "*"
		done
		printf "\n"
	done
	for (( i=1;i<=n-1;i++ ))
	do
		for (( j=1;j<=i;j++ ))
		do
			printf " "
		done
		for (( j=1;j<=2*(n-i)-1;j++ ))
		do
			printf "*"
		done
		printf "\n"
	done
}
echo Enter the number of rows
read r
pattern $r
