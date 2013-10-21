RUN=../../bin/strlen

check()
{
	if diff $1 $2; then
    	echo ok
		return 1
	else
    	echo fail
		return 0
	fi
}

######################################################

echo -n " strlen.t1: "
echo "1" > exp
$RUN A  > obs
check obs exp
rm obs exp

echo -n " strlen.t2: "
echo "5" > exp
$RUN Lorem  > obs
check obs exp
rm obs exp


echo -n " strlen.t3: "
echo "5" > exp
$RUN '%^&#$'  > obs
check obs exp
rm obs exp
