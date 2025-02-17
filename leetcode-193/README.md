# Leedcode 193: Valid Phone Numbers

## Problem Statement
Given a text file `file.txt` that contains a list of phone numbers (one per line), write a **one-liner bash script** to print all valid phone numbers.

A valid phone number must be in one of the following formats:
- `(xxx) xxx-xxxx`
- `xxx-xxx-xxxx`

Example:
**Input (`file.txt`)**
```
987-123-4567
123 456 7890
(123) 456-7890
```

**Output:**
```
987-123-4567
(123) 456-7890
```

## Solutions

### Solution 1: Using `while read` and Regex (For Learning Purpose)
File: [bash_solving.sh](../bash/bash_solving.sh)

This solution reads each line of file using a loop and checks if the line matches the required regex pattern using Bash’s `[[ ... =~ ... ]]` conditional expression.

```bash
#!/usr/bin/env bash

regex="^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$"

while read -r line; do
    if [[ $line =~ $regex ]]; then
        echo "$line"
    fi
done < file.txt
```

**Advantages:**
- Uses built-in Bash features without requiring external commands.
- Efficient for processing large files line by line.

### Solution 2: Using `grep` (one-liner bash script)
File: [grep_solving.sh](../bash/grep_solving.sh)

Utilizes `grep` with an extended regular expression to directly filter valid phone numbers.

```bash
#!/usr/bin/env bash

grep '^\(([0-9]\{3\}) \|[0-9]\{3\}-\)[0-9]\{3\}-[0-9]\{4\}$' file.txt
```

**Advantages:**
- A more concise one-liner solution.
- `grep` is optimized for text searching and filtering, making it efficient for larger files.
