
read -p "Enter a number: " num
rand_num=$((1 + RANDOM % 10))
while [ $num -ne $rand_num ]
do
    read -p "Try again: " num
done
echo "You guessed the number!"