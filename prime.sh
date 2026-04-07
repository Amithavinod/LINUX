if [ $# -ne 1 ]
then
echo "syntax is <$0> <number>"
exit 1
fi
i=$1
j=2
while [ $j -le $((i/2)) ]
do
if [ $(( i % j )) -eq 0 ]
then
echo "$1 is not a prime number"
exit 0
fi
j=`expr $j + 1`
done
echo "$1 is a prime number"
 
