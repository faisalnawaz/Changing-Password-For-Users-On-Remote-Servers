#!/bin/bash

ip_list=()


for ip in ${ip_list[@]};
do
	echo "******************$ip********************" >> password_change_ip_list_confirmation.txt
	echo "" >> password_change_ip_list_confirmation.txt
	sshpass -p "" ssh -t root@$ip 'echo -e "password\npassword" | passwd username'| grep passwd >> password_change_ip_list_confirmation.txt
	echo "" >> password_change_ip_list_confirmation.txt
	echo "" >> password_change_ip_list_confirmation.txt
done

