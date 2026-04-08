if [ $# -ne 1 ]
then
echo " syntax is $0 [<filename>]"
exit 1
fi
flag=0
if [ $# -eq 1 ]
then
term=`tty`
exec < $1
flag=1
fi
while read line
do
no1=`expr $no1 + 1`
set $line >/dev/null
nwds=`expr $nwds + $#`
done
echo "number of lines=$no1"
echo "number of words =$nwds"
if [ $flag -eq 1 ]
then
exec < $term
fi
exit 0
