#read 3 nos
if [ $# -ne 3 ]
then
echo "syntax is <$0><no1><no2><no3>"
exit 1
fi
n1=$1
n2=$2
n3=$3
if [ $n1 -gt $n2 ]
then
temp=$n1
n1=$n2
n2=$temp
fi
if [ $n2 -gt $n3 ]
then
temp=$n2
n2=$n3
n3=$temp
fi
if [ `expr $n1 + $n2` -gt $n3 ]
then
echo "triangle can be formed"
else
 echo "triangle can not be formed"
 exit 1
fi
if [ $n1 -eq $n2 -a $n2  -eq $n3 ] 
then
echo "equalateral triangle"
elif [ $((n1*n1 + n2*n2)) -eq $((n3*n3)) ]
then
echo "triangle is right angled"
elif [ $n1 -eq $n2 -o $n1 -eq $n3 -o $n2 -eq $n3 ]
then
echo "triangle is isosceles"
else
echo "normal triangle"
fi
exit 0
