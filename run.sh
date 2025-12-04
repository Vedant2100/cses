#!/bin/bash

FILE="$1"

if [[ "$FILE" == *.cpp ]]; then
    g++ "$FILE" -O2 -std=c++17 -o run.out
    ./run.out < input.txt
elif [[ "$FILE" == *.py ]]; then
    python3 "$FILE" < input.txt
else
    echo "Unsupported file type"
fi
\