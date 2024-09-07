#!/bin/bash
# Original code: Nguyen Khac Trung Kien
# Fork by: Felipe Avelar
# Simplified for curl funny usage by LeSpatiocorne 

#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
dir="$SCRIPT_DIR/frames-ascii"

clear

for filename in $(ls -v "$dir"); do
    tput cup 0 0
    file="$dir/$filename"
    if [ -f "$file" ]; then
        cat "$file"
    fi
    sleep 0.024
done