pattern(){
	r=$1
	for (( i=1;i<=r;i++ ))
	do
		for (( j=1;j<=i;j++ ))
		do
			printf "* "
		done
		printf "\n"
	done
}
echo "Enter the row number-->"
read r
pattern $r
