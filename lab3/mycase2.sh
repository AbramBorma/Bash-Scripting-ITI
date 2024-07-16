# 2. Enhanced the previous script, by checking the type of string entered by a user:
# a. Upper Cases.
# b. Lower Cases.
# c. Numbers.
# d. Mix.
# e. Nothing.

str=''

while [ ${#str} -eq 0 ] || [[ "$str" =~ \  ]]; do
    read -p "Please Enter One Word Only: " str

    if [[ ! "$str" =~ \  ]]; then
        if [[ -z "$str" ]]; then
            echo "Nothing"
        elif [[ "$str" =~ ^[A-Z]+$ ]]; then
            echo "Capital"
        elif [[ "$str" =~ ^[a-z]+$ ]]; then
            echo "Small"
        elif [[ "$str" =~ ^[0-9]+$ ]]; then
            echo "Number"
        else
            echo "Mix"
        fi
        exit 0
    fi
done
