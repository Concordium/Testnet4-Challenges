#!/bin/bash

echo "START"

while getopts t:s:r:a:p: flag
do
    case "${flag}" in
        t) task_no=${OPTARG};;
        s) sender=${OPTARG};;
        r) receiver=${OPTARG};;
	a) gtu_per_trn=${OPTARG};;
	p) password=${OPTARG};;
    esac
done

echo "Task: $task_no";
echo "Sender: $sender";
echo "Receiver: $receiver";
echo "GTU Amount: $gtu_per_trn";

curr_dir=$(pwd)
echo $curr_dir

case $task_no in

  T1)
    echo '################## Run $task_no'
    for (( c=1; c<=2; c++ ))
    do
	    echo "Run count: $c"
	    printf "y\n$password\n" | $curr_dir/concordium-client transaction send-gtu --amount $gtu_per_trn --sender $sender --receiver $receiver
    done
    echo "################## Done $task_no"
    ;;

  T2)
    echo "################## Run $task_no"
    $curr_dir/concordium-client transaction send-gtu-encrypted --sender $sender --receiver $receiver --amount $gtu_per_trn <<EOF
$password
y
$password
EOF
    echo "################## Done $task_no"
    ;;

  T3)
    echo "################## Run $task_no"
    echo "################## Send simple trns"
    printf "y\n$password\n" | $curr_dir/concordium-client transaction send-gtu --amount $gtu_per_trn --sender $sender --receiver $receiver
    echo "################## Send shielded trns"
    $curr_dir/concordium-client transaction send-gtu-encrypted --sender $sender --receiver $receiver --amount $gtu_per_trn <<EOF
$password
y
$password
EOF
    echo "################## Send shielding amount plus trns"
    printf "y\n$password\n" | $curr_dir/concordium-client account encrypt --amount $gtu_per_trn --sender $sender
    echo "################## Send unshielding amount plus trns"
    printf "$password\ny\n$password\n" | $curr_dir/concordium-client account decrypt --sender $sender --amount $gtu_per_trn
    echo "################## Done $task_no"
    ;;

  T4)
    echo "################## Run $task_no"
    size=50
    total_gtu_need=`echo - | awk "{print $gtu_per_trn*$size}"`
    next_5_min_datetime=`TZ=UTC date -d '5 mins' -u +"%Y-%m-%dT%H:%M:%SZ"`
    printf "$password\n" | $curr_dir/concordium-client transaction send-gtu-scheduled --amount $total_gtu_need --every Minute --for $size --starting $next_5_min_datetime --receiver $receiver --sender $sender --no-confirm --no-wait
    echo "################## Done $task_no"
    ;;

  *)
    echo '################## Undefined'
    ;;
esac
