year=$1
if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ]
then 
	echo "$year is leap year"
else
	echo "$year is not leap year"
fi
