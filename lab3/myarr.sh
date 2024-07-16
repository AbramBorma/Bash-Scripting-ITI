# 9. Write a script called myarr that ask a user how many elements he wants to enter in an
# array, fill the array and then print it.

#!/bin/bash

read -p "Enter how many words you want to save in an array: " n

while [[ $n -le 0 ]]; do
    echo "The number of words can't be less than 1"
    read -p "Enter how many words you want to save in an array: " n
done

declare -a arr

for ((i=0; i<n; i++)); do
    read -p "Enter element $(($i+1)): " arr[$i]
done

echo "Array Elements are: ${arr[@]}"
