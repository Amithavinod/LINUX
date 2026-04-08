if [ $# -gt 1 ]
then
echo "syntax is <$0> year"
exit 1
fi
if [ $# -ne 1 ]
then
y=`date +%Y`
else
y=$1
fi
if [ $((y % 4)) -eq 0 -a $((y % 100)) -ne 0 -o $((y % 400)) -eq 0 ]
then
echo "$y is a leap year"
else
echo "$y is not a leap year"
fi
