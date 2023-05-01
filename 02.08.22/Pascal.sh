pascal(){
	r=$1
	for (( i=1;i<=r;i++ ))
	do
		for (( j=r-i;j>0;j-- ))
		do
			printf " "
		done
		for (( k=1;k<=i;k++ ))
		do
			printf "* "
		done
		printf "\n"
	done
}
echo "Enter the row number-->"
read r
pascal $r
