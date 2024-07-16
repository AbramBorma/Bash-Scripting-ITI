# 5. Write a script called mymail using for utility to send a mail to all users in the system.
# Note: write the mail body in a file called mtemplate.


if ! command -v mail &> /dev/null; then
    echo "mail command not found. Please install mailutils."
    exit 1
fi

mail_body="mtemplate"
users=$(cut -d: -f1 /etc/passwd)

for user in $users; do
    echo "$mail_body" | mail -s "Email Received" "$user"
done
