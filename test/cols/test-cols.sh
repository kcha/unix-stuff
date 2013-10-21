RUN=../../bin/cols

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

echo -n " cols.t1: "
echo "5" > exp
$RUN a.txt > obs
check obs exp
rm obs exp

echo -n " cols.t2: "
echo "1" > exp
$RUN b.txt "\ "> obs
check obs exp
rm obs exp
