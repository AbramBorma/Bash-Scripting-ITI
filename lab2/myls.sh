if [ $# -gt 1 ]; then
    echo "Please enter zero OR one directory name"
elif [ $# -eq 0 ]; then
    ls ./
else
    if [ -d $1 ]; then
        ls $1
    else
        echo "Directory is not found"
    fi
fi