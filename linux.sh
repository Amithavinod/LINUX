if [ $# -eq 0 ]
then
echo "syntax is $0 <filename>"
exit 1
fi
if [ ! -f $1 ]
then
echo "file doesn't exist"
exit 2
fi
echo "---------------------------original file content------------------------------"
cat $1
grep -v -i "linux" $1 > temp.txt
mv temp.txt $1
echo "---------------updated file content after deleting lines contains linux----------------"
cat $1
