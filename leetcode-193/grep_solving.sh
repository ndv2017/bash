# Read from the file file.txt and output all valid phone numbers to stdout.
#!/usr/bin/env bash

grep '^\(([0-9]\{3\}) \|[0-9]\{3\}-\)[0-9]\{3\}-[0-9]\{4\}$' file.txt
