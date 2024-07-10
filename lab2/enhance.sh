
list() {
    dir="$1"
    ls -l "$dir"
    ls -a "$dir"
    ls -d "$dir"
    ls -i "$dir"
    ls -R "$dir"
}

if [[ $# -gt 1 ]]; then
    echo "Please enter zero OR one directory name"
elif [[ $# -eq 0 ]]; then
    list .
else
    if [ -d "$1" ]; then
        list "$1"
    else
        echo "Directory is not found"
    fi
fi
