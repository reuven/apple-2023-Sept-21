#!/bin/bash

# Generate a random number between 1 and 1000 (adjust the range as needed)
RANDOM_NUMBER=$((RANDOM % 1000 + 1))

# Get the total number of lines in the file
total_lines=$(wc -l < random_numbers.txt)

# Generate a random line number between 1 and the total number of lines
random_line=$((RANDOM % total_lines + 1))

# Append the random number as a new line to the random line in the file
sed -i.bak "${random_line}i\\
${RANDOM_NUMBER}\\
" random_numbers.txt
# Change to the Git repository directory
cd "$REPO_PATH" || exit

# Add the changes to the file
git add random_numbers.txt

<<<<<<< HEAD
git commit -m "Add a random number ($RANDOM_NUMBER) to a line ${random_line}"

=======
>>>>>>> main
git pull
git push
