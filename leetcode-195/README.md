# LeetCode Problem 195: Tenth Line

## Problem Statement
[LeetCode Problem - Tenth Line](https://leetcode.com/problems/tenth-line/description/)

## Solutions

### Solution 1: Using `while read` Loop (Bash Script)
File: [bash_solving.sh](./bash_solving.sh)

This solution reads each line from `file.txt` sequentially using a `while` loop and keeps a count of the lines. Once the tenth line is reached, it is printed, and the loop terminates.

```bash
#!/usr/bin/env bash

count=0

while ((++count)) && read -r line
do
        if [[ $count -eq 10 ]]; then
                echo $line
                break
        fi
done < file.txt
```

**Advantages:**
- Does not require external tools like `awk` or `sed`.
- Efficient as it stops reading once the tenth line is found.

### Solution 2: Using `sed` (One-liner Solution)
File: [sed_solving.sh](./sed_solving.sh)

This solution uses `sed` to directly print the tenth line from `file.txt` and exits immediately for efficiency.

```bash
#!/usr/bin/env bash

sed -n '10p;10q' file.txt
```

**Advantages:**
- A concise and efficient one-liner.
- `sed` stops processing the file after printing the tenth line(`p` is print, `q` is quit).
- The `-n` option disables automatic printing