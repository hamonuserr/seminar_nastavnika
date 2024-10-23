add(){
local num1=$1
local num2=$2
local sum=$(($num1 + $num2))
echo "The sum equals $sum"
}

read -p "1st number is:" first_num
read -p "2nd number is:" sec_num

add "$first_num" "$sec_num"
