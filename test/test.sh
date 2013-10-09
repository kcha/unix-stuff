echo -e " Testing colnum:"
cd colnum; sh test-colnum.sh; cd ..

echo -e "\n Testing cols:"
cd cols; sh test-cols.sh; cd ..

echo -e "\n Testing zwcl:"
cd zwcl; sh test-zwcl.sh; cd ..

echo -e "\n Testing splitstr:"
cd splitstr; sh test-splitstr.sh; cd ..

echo -e "\n Testing strlen:"
cd strlen; sh test-strlen.sh; cd ..
