#!/bin/bash
#Discord = Emre NOP#7479

#You need to add below to crontab. it will exec every 10 minutes 7 hours 7 days. after 7 days delete from cron
#jsut adjust your times. not recomended to conflict with T2
#*/5 12,14,16,18,20,22,23 * * * /home/conc/Documents/concordium-software/T3.sh



#Below should be address not account name !!
receiver="2zPYx1RuqLgjK8kb9GfecksHU1KRMi1aKfCGUZhpaky8kcM4rD" #Account3
#Below should be address not account name !!
sender="4h9CqipNJigtTKwox3CAjSNo3jU6hKSoCmrrWGccynkZ2FhqMm" #Account 2
pass="123456\n"
pass2="123456\n"

cd /home/conc/Documents/concordium-software
#if you see "send: spawn id exp4 not open" = # first date variable and delete second one"
#Eger "send: spawn id exp4 not open" hatasi goruyorsaniz ilk date in basina # koyun ikinciyi acin.

date=`date +%d%m%y`
date2=`date`

echo "RUN $i"

#Simple TX
/usr/bin/expect << EOF  >> T3.log
set timeout -1
spawn ./concordium-client --grpc-ip 127.0.0.01 --grpc-port 10000 transaction send-gtu --amount 0.1 --receiver "$receiver" --sender "$sender" --no-confirm

expect "Enter password for signing key:"
send -- $pass
expect eof

EOF

#Shielded TX
/usr/bin/expect << EOF  >> T3.log
set timeout -1
spawn ./concordium-client --grpc-ip 127.0.0.01 --grpc-port 10000 transaction send-gtu-encrypted --receiver "$receiver" --amount 0.1 --sender "$sender" --no-confirm

expect "Enter password for decrypting the secret encryption key:"
send -- $pass
expect "Enter password for signing key:"
send -- $pass2
expect eof

EOF

#Shielding amount
/usr/bin/expect << EOF  >> T3.log
set timeout -1
spawn ./concordium-client --grpc-ip  127.0.0.01 --grpc-port 10000 account encrypt --amount 1 --sender "$sender" --no-confirm
expect "Enter password for signing key:"
send -- $pass2
expect eof

EOF

#Unshielding amout
/usr/bin/expect << EOF  >> T3.log
set timeout -1
spawn ./concordium-client --grpc-ip  127.0.0.01 --grpc-port 10000 account decrypt --amount 1 --sender "$sender" --no-confirm

expect "Enter password for decrypting the secret encryption key:"
send -- $pass
expect "Enter password for signing key:"
send -- $pass2
expect eof

EOF
