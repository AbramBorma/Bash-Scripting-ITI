# 8. Create the following menu:
# a. Press 1 to ls
# b. Press 2 to ls –a
# c. Press 3 to exit
# Using select utility then while utility.


PS3="Select an Option: "

while true; do
    select i in "ls" "ls -a" "exit"; do
        case $REPLY in
        
            1)
                ls
                break
                ;;
            2)
                ls -a
                break
                ;;
            3)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Invalid Option"
                break
                ;;
        esac
    done
done
