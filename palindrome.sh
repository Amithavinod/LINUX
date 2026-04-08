if [ $# -ne 1 ]
then
echo "syntax is <$0> <number>"
exit 1
fi
n=$1
ruv=0
s=$n
while [ $s -ne 0 ]
do
digit=`expr $s % 10`
ruv=`expr $ruv "*" 10 + $digit`
s=`expr $s / 10`
done
if [ $n -eq $ruv ] 
then
echo "it is a palindrome"
else
echo "it is not a palindrome"
fi
exit 0
