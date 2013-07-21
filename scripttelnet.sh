status=0
test=0
while :
do
test=`(
echo open 127.0.0.1 10011
sleep 0.2
echo "login ERA 5p0JcvR9"
sleep 0.2
echo "use 1"
sleep 0.2
echo "clientlist"
sleep 0.2
echo "logout"
sleep 0.2
) | telnet | grep $name`
nb=${#test}
echo $nb
echo "----"
./filter "$test" $nb
if [ "$test" = "Babii" -a "$status" = "0" ]
	then 
		
		(echo open 127.0.0.1 10011
sleep 0.2
		echo "login ERA 5p0JcvR9"
sleep 0.2
		echo "use 1"
sleep 0.2
		echo 'sendtextmessage targetmode=3 target=1 msg=Babii_connected'
sleep 0.2
		echo 'clientmove clid=44 cid=185'
sleep 0.2
		echo 'sendtextmessage targetmode=3 target=1 msg=Babii_Switch'
sleep 0.2
		echo 'logout'
sleep 0.2
		) | telnet
		status=1

fi
done
