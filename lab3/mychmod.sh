# 3. Write a script called mychmod using for utility to give execute permission to all files and
# directories in your home directory.

for file in $HOME/*
do
    chmod u+x "$file"
done