# 11.Write a function called mysq that calculate square of its argument.


mysq() {
    local num=$1
    echo $((num * num))
}


if [ $# -ne 1 ]; then
    echo "Please enter one number only"
    exit 1
fi

result=$(mysq $1)

echo "The square of $1 is $result"

