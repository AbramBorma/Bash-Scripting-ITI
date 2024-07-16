# 4. Write a script called mybackup using for utility to create a backup of only files in your
# home directory.

backup_dir="$HOME/backup"

mkdir -p "$backup_dir"

for file in $HOME/*; do
    if [[ -f "$file" ]]; then
        cp "$file" "$backup_dir"
    fi
done

echo "Backup completed."