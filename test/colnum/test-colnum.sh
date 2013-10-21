RUN=../../bin/colnum

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

echo -n " colnum.t1: "
echo 3 > exp
$RUN dolor a.txt > obs
check obs exp
rm obs exp

echo -n " colnum.t2: "
echo 1 > exp
$RUN "#Lorem" b.txt > obs
check obs exp
rm obs exp
