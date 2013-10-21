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
echo "text.txt.gz 10" > exp
$RUN text.txt.gz > obs
check obs exp
rm obs exp
