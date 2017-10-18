## TODO - check if connected to remote

# Getting first offline command saved number
begin=$(cat /root/psyconet/__begin)

# Default Desktop to remote
echo "cd /root/Desktop" > /root/psyconet/push.sh

# Save history in __temp
history > /root/psyconet/__history

# Storing the offline commands
grep -A100000 $begin  /root/psyconet/__history > /root/psyconet/__temp

cat /root/psyconet/__temp | awk '{for (i = 2; i <= NF; i++) printf $i " "; print ""}' >> /root/psyconet/push.sh

# Removing trash
sed -i '2d' /root/psyconet/push.sh
sed -i '$ d' /root/psyconet/push.sh

# Setting up the permissions for push.sh
chmod +x /root/psyconet/push.sh

