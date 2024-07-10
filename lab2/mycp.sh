if [[ $# -lt 2 ]]
then
    echo "Please enter at least two file names"
elif [[ $# -eq 2 ]]
then
    if [[ -f $1 && -f $2 ]]
    then
        cp "$1" "$2"
    else
        echo "One of the files does not exist"
    fi
else
    target_dir="${!#}"
    if [[ -d $target_dir ]]
    then
        cp "${@:1:$#-1}" "$target_dir"
    else
        echo "The target directory does not exist"
    fi
fi