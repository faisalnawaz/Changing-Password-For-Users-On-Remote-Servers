#!/bin/bash

ip_list=(192.168.0.136 192.168.0.140)
usr_list=("user1" "user2")

for ip in ${ip_list[@]};
do
for usr in ${usr_list[@]};
do
	echo "******************$ip********************" >> password_change_ip_list_confirmation.txt
	echo "Here" >> password_change_ip_list_confirmation.txt
	sshpass -p "root@123" ssh -t root@$ip 'echo -e "password\npasword" | pass ${usr}'|grep passwd >> password_change_ip_list_confirmation.txt
	echo "Here" >> password_change_ip_list_confirmation.txt
done
done
