if [[ $# -ne 1 ]]; then
    echo "Please enter only one file name"
elif [[ $1 != "s1.sh" ]]; then
    echo "Invalid file name"
else
    x=$(cat s1.sh)
    echo "$x"
    echo "${x}"
fi