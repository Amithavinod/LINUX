if [ $# -ne 3 ]
then
echo "syntax is $0 <no> <op> <no1>"
exit 1
fi
case $2 in
+)a=`expr $1 + $3` ;;
-)a=`expr $1 - $3` ;;
x)a=`expr $1 "*" $3` ;;
/)a=`expr $1 / $3` ;;
%)a=`expr $1 % $3` ;;
*)echo "invalid operator"
esac
echo $a 
