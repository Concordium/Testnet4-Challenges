#!/bin/bash
#Discord = Emre NOP#7479
#Before run script install expect package to your OS.
#This is bash script not sh. please run with ./ 

#Below should be address not account name !!
receiver="4F8fvbZfBTsM9Aoi1WkoLawxWM4bba7qopW28orLJNfP1PD5vL"
#Below should be address not account name !!
sender="3DRttEtaofdfmtt8PnP7SsWBjN9SBFUcdRzwi3wWPj9DSXY3Rp"
pass="123456\r\n"

#Dont forget to update D="$date"T12:00:00Z part. Check your current time and update T12:00 part on script. Time should not be at the past
#13 17,18,19,20,21   * * * /home/conc/Documents/concordium-software/T1.sh
cd /home/conc/Documents/concordium-software

for i in {1..121}
do
  echo "TX - $1"
#Simple TX
/usr/bin/expect << EOF  >> T1.log
set timeout -1
spawn ./concordium-client --grpc-ip 127.0.0.01 --grpc-port 10000 transaction send-gtu --amount 0.1 --receiver "$receiver" --sender "$sender" --no-confirm --no-wait

expect "Enter password for signing key:"
send -- $pass
expect eof

EOF

done
