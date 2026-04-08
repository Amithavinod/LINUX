if [ $# -ne 1 ]
then
echo "syntax is $0 <number>"
exit 1
fi
n=$1
ruv=0
s=0
while [ $n -ne 0 ]
do
t=`expr $n % 10`
ruv=`expr $ruv "*" 10 + $t`
s=`expr $s + 1`
n=`expr $n / 10`
done
while [ $s -ne 0 ]
do
t=`expr $ruv % 10`
case $t in
0) echo -n " zero "  ;;
1) echo -n "one ";;
2) echo -n "two ";;
3) echo -n "three ";;
4) echo -n "four ";;
5) echo -n "five ";;
6) echo -n "six ";;
7) echo -n "seven ";;
8) echo -n "eight ";;
9) echo -n "nine ";;
*) echo "enter a number"
esac
ruv=`expr $ruv / 10`
s=`expr $s - 1`
done 
