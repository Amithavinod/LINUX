if [ $# -ne 0 ]
then
echo "syntax is $0"
exit 1
fi
t=`date +%H`
if [ $t -ge 0 -a $t -lt 12 ]
then
echo "GOOD MORNING"
elif [ $t -ge 12 -a $t -lt 16 ]
then
echo "GOOD AFTERNOON"
elif [ $t -ge 16 -a $t -lt 20 ]
then
echo "GOOD EVENAING"
else
echo "GOOD NIGHT"
fi
