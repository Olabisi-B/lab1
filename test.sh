#!/bin/bash

# Execute the Python program and capture its output
output=$(python3 hello.py)

# The expected output
expected_output="Hello, World!"

# Check if the program's output matches the expected output
if [ "$output" == "$expected_output" ]; then
    echo "Test Passed: Program produces the correct output."
    exit 0
else
    echo "Test Failed: Expected '$expected_output' but got '$output'."
    exit 1
fi
