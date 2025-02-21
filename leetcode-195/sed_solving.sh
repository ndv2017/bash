# Read from the file file.txt and output the tenth line to stdout.
#!/usr/bin/env bash

sed -n '10p;10q' file.txt

