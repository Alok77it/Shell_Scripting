#1. Ping a website and check if it's online

echo "Enter the website you want to ping: "
read website
if [ `ping -c 1 $website &> /dev/null; echo $?` -eq 0 ]; then # ping the packet once and redirect the output to /dev/null to suppress it and then check the exit status of the ping command to determine if the website is online
  echo "$website is online"
else
  echo "$website is offline"
fi

#2. Find your public and private IP address

echo "Public IP address: "
curl ifconfig.me # get the public IP address
echo "Private IP address: "
hostname -I # get the private IP address

#3. Get the system's network configuration.

echo "Network configuration: "
ifconfig # get the network configuration