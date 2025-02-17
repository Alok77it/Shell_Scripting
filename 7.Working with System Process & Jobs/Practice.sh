#1. List all processes running on the system.

echo "Processes running on the system:"
ps -ef

#2. Kill Process by its PID

echo " Enter the PID number:" ; read pid
kill -9 $pid

#3. Check if a speific Process is running or not

echo "Enter the process name to check if it is running or not:" ; read pname
if ps -ef | grep -v grep | grep $pname > /dev/null; then
    echo "$pname is running"
else
    echo "$pname is not running"
fi 
