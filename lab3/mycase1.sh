# 1. Write a script called mycase, using the case utility to checks the type of character
# entered by a user:
# a. Upper Case.
# b. Lower Case.
# c. Number.
# d. Nothing.


char=''

while [ ${#char} -eq 0 ] || [ ${#char} -ne 1 ]; do
    read -p "Please Enter One Character Only: " char

    if [ ${#char} -eq 1 ]; then
        case $char in
            [A-Z])
                echo "Capital"
                ;;
            [a-z])
                echo "Small"
                ;;
            [0-9])
                echo "Number"
                ;;
            *)
                echo "Nothing"
                ;;
        esac
        exit 0
    fi
done
