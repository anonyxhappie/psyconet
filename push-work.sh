user=root
host=192.168.0.105

# Push remotely
ssh $user@$host 'bash -s' < /root/psyconet/push.sh &> /dev/null
