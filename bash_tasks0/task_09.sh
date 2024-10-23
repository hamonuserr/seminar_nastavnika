read -p "Enter the command:" comm
eval $comm &
echo "PID $!"
