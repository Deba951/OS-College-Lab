Insert(){
	r=$1
	n=$2
	m=$3
	echo "$r|$n|$m" >> student.txt
}
Display(){
	cat student.txt
}
Delete(){
	r=$1
	echo Roll=$r
	x=`wc -l<student.txt`
	for (( i=2;i<=x;i++ ))
	do
		y=`head -n $i student.txt|tail -n 1|cut -d \| -f 1`
		if [ $r == $y ]
		then
			break
		fi
	done
	rm temp.txt
	head -n $(( $i - 1 )) student.txt>>temp.txt
	tail -n $(( $x - $i )) student.txt>>temp.txt
	rm student.txt
	cat temp.txt>student.txt
}
Update(){
	r=$1
	m=$2
	x=`wc -l<student.txt`
	for (( i=2;i<=x;i++ ))
	do
		y=`head -n $i student.txt|tail -n 1|cut -d \| -f 1`
		#echo @@@ $y %%% $r
		if [ $r == $y ]
		then
			val=`head -n $i student.txt|tail -n 1|cut -d \| -f 1,2`
			rm temp.txt
			head -n $(( $i - 1 )) student.txt>>temp.txt
			echo "$val|$m" >>temp.txt
			tail -n $(( $x - $i )) student.txt>>temp.txt
			break
		fi
	done
	#rm student.txt
	cat temp.txt>student.txt
}
clear
while [ 1 ]
do
	echo "Enter your choice-->"
	echo "Enter 1 for Insert,2 for Display,3 for delete,4 for update,5 to exit"
	read choice
	case $choice in
	1)
		echo "Enter roll number"
		read roll
		echo "Enter name"
		read name
		echo "Enter marks"
		read marks
		Insert $roll $name $marks
		;;
	2)
		Display
		;;
	3)
		echo "Enter the roll number to delete-->"
		read roll
		Delete $roll
		;;
	4)
		echo "Enter roll number"
		read roll
		echo "Enter marks to update"
		read marks
		Update $roll $marks
		;;
	5)
		exit
	esac
done
