#!/bin/bash
#Discord = Emre NOP#7479
#Before run script install expect package to your OS.

#Below should be address not account name !!
receiver="4F8fvbZfBTsM9Aoi1WkoLawxWM4bba7qopW28orLJNfP1PD5vL"
#Below should be address not account name !!
sender="3DRttEtaofdfmtt8PnP7SsWBjN9SBFUcdRzwi3wWPj9DSXY3Rp"
pass="123456\r\n"

#Dont forget to update D="$date"T12:00:00Z part. Check your current time and update T12:00 part on script. Time should not be at the past

for gun in {1..7}
do

date=`date -d "+$gun day" +%Y-%m-%d`
D="$date"T12:00:00Z # Update T12

for i in {1..100}
do
echo "RUN $date - $i"

/usr/bin/expect << EOF  >> tx-out.log
set timeout -1
spawn ./concordium-client --grpc-ip  127.0.0.01 --grpc-port 10000 transaction send-gtu-scheduled --amount 0.1 --every Hour --for 5 --starting "$D" --receiver "$receiver" --sender "$sender" --no-confirm

expect "Enter password for signing key:"
send -- $pass
expect eof

EOF
done

done
