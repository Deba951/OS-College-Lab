echo "Enter the marks of Math-->"
read m;
echo "Enter the marks of OOPs-->"
read o;
echo "Enter the marks of Software-->"
read s;
echo "Enter the marks of Compiler Design-->"
read c;
echo "Enter the marks of Operating System-->"
read os;
sum=`expr $m + $o + $s + $c + $os`
avg=`echo "scale=3; $sum / 5" | bc`
echo "Average marks of the subjects--> $avg" 
