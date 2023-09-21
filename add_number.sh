#!/bin/bash

# Generate a random number between 1 and 1000 (adjust the range as needed)
RANDOM_NUMBER=$((RANDOM % 1000 + 1))

# Append the random number as a new line to the file
echo "$RANDOM_NUMBER" >> random_numbers.txt

# Add the changes to the file
git add random_numbers.txt

# Commit the changes with a relevant message
git commit -m "Add a random number: $RANDOM_NUMBER"

git pull
git push
