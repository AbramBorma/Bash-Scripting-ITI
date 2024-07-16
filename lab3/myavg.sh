# 10.Write a script called myavg that calculate average of all numbers entered by a user.
# Note: use arrays


read -p "Enter how many numbers you want to save in an array: " n

while [[ $n -le 2 ]]; do
    echo "The number of numbers can't be less than 2"
    read -p "Enter how many numbers you want to save in an array: " n
done

declare -a arr
sum=0

for ((i=0; i<n; i++)); do
    read -p "Enter number $(($i+1)): " arr[$i]
    sum=$((sum + arr[$i]))
done

avg=$(echo "$sum / $n" | bc -l)

echo "The Average of your selected numbers is $avg"
