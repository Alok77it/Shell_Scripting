#1.Write a function to find the square of a number

read -p "Enter a number: " num
function square(){
    echo "Square of $num is $(($num * $num))"
}

square

#2.Create a function to check if a string is palindrome 

read -p "Enter a string: " str
function palindrome(){
    rev=""
    for (( i=${#str}; i>=0; i-- )); do
        rev="$rev${str:$i:1}"
    done
    if [ $str == $rev ]; then
        echo "$str is a palindrome"
    else
        echo "$str is not a palindrome"
    fi
}

palindrome

#3.Implement a function to find the greatest of three numbers 

read -p "Enter three numbers: " a b c
function greatest(){
    if [ $a -gt $b ] && [ $a -gt $c ]; then
        echo "$a is the greatest"
    elif [ $b -gt $a ] && [ $b -gt $c ]; then
        echo "$b is the greatest"
    else
        echo "$c is the greatest"
    fi
}
greatest