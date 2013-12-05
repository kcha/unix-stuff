RUN=../../bin/zwcl

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

echo -n " zwcl.t1: "
echo "10 a.txt.gz" > exp
$RUN a.txt.gz > obs
check obs exp
rm obs exp

echo -n " zwcl.t2: "
echo "5 b.txt.gz" > exp
$RUN b.txt.gz > obs
check obs exp
rm obs exp

echo -n " zwcl.t3: "
echo -e "10 a.txt.gz\n5 b.txt.gz\n15 total" > exp
$RUN a.txt.gz b.txt.gz > obs
check obs exp
rm obs exp
