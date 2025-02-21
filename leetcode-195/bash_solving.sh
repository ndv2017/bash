# Read from the file file.txt and output the tenth line to stdout.
#!/usr/bin/env bash

count=0

while ((++count)) && read -r line
do
        #count=$((count+1))
        #let count=count+1
        if [[ $count -eq 10 ]]; then
                echo $line
                break
        fi
done < file.txt

