#A script that check if a specific process is running and restart it if it is not running.

echo "Enter the process name to check if it is running or not:" ; read pname
if ps -ef | grep -v grep | grep $pname > /dev/null; then
    echo "$pname is running"
else
    echo "$pname is not running"
    echo "Restarting $pname"
    $pname
fi