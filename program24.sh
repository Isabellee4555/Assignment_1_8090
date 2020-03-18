#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron
time=$(date +%I)
count=0
while test $count -lt $time; do
  echo -e "\a"
  sleep 1 # sleep for one second
  count=$[$count+1]
done
sleep 3
t_m=$(date +%M)
if [ $t_m -gt 45 ];then
echo -e "\a"
sleep 0.5
echo -e "\a"
sleep 0.5
echo -e "\a"
elif [ $t_m -gt 30 ];then
echo -e "\a"
sleep 0.5
echo -e "\a"
elif [ $t_m -gt 15 ];then
echo -e "\a"
else 
	exit
fi
