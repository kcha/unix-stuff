RUN=../../bin/splitstr

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

echo -n " splitstr.t1: "
echo \
"Lorem
ipsum
dolor
sit
amet,
consectetur
adipiscing
elit."> exp
$RUN "Lorem ipsum dolor sit amet, consectetur adipiscing elit." "\s" > obs
check obs exp
rm obs exp

echo -n " splitstr.t2: "
echo \
"Lorem
ipsum
dolor" > exp
$RUN "Lorem	ipsum	dolor" "\t" > obs
check obs exp
rm obs exp
