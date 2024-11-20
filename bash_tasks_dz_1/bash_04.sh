hello_sayer () {
    echo "Hello $1"
}

two_num(){
    local sum=$(($1+$2))
    echo "sum of $1 and $2 is $sum"
}

hello_sayer "Yolo man" 

two_num '2' '3'
