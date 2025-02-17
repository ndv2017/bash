# Read from the file file.txt and output all valid phone numbers to stdout.
#!/usr/bin/env bash

regex="^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$"

while read -r line; do
    if [[ $line =~ $regex ]]; then
        echo "$line"
    fi
done < file.txt
