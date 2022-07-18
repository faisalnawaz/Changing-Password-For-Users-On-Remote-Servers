arr=(192.168.0.)

for ip in ${arr[@]}; do

	count=30
	while [ $count -lt 31 ]
	do
		ip_=$ip$count
		echo "The IP is: $ip_"
		timeout 2s sshpass -p "root@123"  ssh -t root@$ip_ 'chage -d 2021-12-18 user1'
		count=$[$count +1]
	done

	
done
