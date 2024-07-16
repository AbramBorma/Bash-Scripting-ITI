# 6. Write a script called chkmail to check for new mails every 10 seconds. Note: mails are
# saved in /var/mail/username.

while true
do
    if [[ -s /var/mail/$USER ]]; then
        echo "You have a new email"
    else
        echo "No New Emails"
    fi
    sleep 10
done