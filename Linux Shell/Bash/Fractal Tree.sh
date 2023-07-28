#!/bin/bash

# This challenge involves the construction of trees, in the form of ASCII Art.
# We have to deal with real world constraints, so we cannot keep repeating the pattern infinitely.
# So, we will provide you a number of iterations, and you need to generate ASCII tree for each iteration.

# CONSTRAINTS: N<=5
# Output Format: The Nth iteration of the tree must be printed. It should be a matrix of 63 rows and 100 columns. It should be composed entirely of underscores and ones, in a manner similar to the examples provided. Do not include ant extra leading or trailing spaces.

# Function to draw a fractal tree row with proper spacing

declare -A a
# d - depth
# l = length
# r = row
# c = column

f() {
    local d=$1 l=$2 r=$3 c=$4
    [[ $d -eq 0 ]] && return
    for ((i=l; i; i--)); do
        a[$((r-i)).$c]=1
    done
    ((r -= l))
    for ((i=l; i; i--)); do
        a[$((r-i)).$((c-i))]=1
        a[$((r-i)).$((c+i))]=1
    done
    f $((d-1)) $((l/2)) $((r-l)) $((c-l))
    f $((d-1)) $((l/2)) $((r-l)) $((c+l))
}
read n
f $n 16 63 49
for ((i=0; i<63; i++)); do
    for ((j=0; j<100; j++)); do
        if [[ ${a[$i.$j]} ]]; then
            printf 1
        else
            printf _
        fi
    done
    echo
done

#1-The declare -A a command declares an associative array a.
#2-The f function takes four arguments: depth d, length l, row r, and column c. It's the recursive function that builds the fractal tree.
#3-In the f function, it checks if d (depth) is zero. If it is, the function returns, terminating the recursion.
#4-If the depth is not zero, the function starts adding branches and leaves to the associative array a using nested loops.
#5-The function creates the main vertical segment of the Y-shaped branch using the first loop (for ((i=l; i; i--)); do). It sets the value of the associative array a to 1 at positions corresponding to the vertical segment.
#6-It then updates the row (r) value to move to the top of the Y-shaped branch.
#7-The function creates the two slanting segments of the Y-shaped branch using the second loop (for ((i=l; i; i--)); do). It sets the value of the associative array a to 1 at positions corresponding to the slanting segments.
#8-The function then makes two recursive calls to itself, one for each side of the Y-shaped branch, to build the fractal tree further.
#9-The read n command reads the input value n, which represents the number of iterations.
#10-The script calls the f function with the input n, initial length 16, and the starting row and column coordinates (63 and 49, respectively).
#11-After building the fractal tree in the associative array a, the script uses nested loops to print the tree as ASCII art. It checks the values in the associative array a for each position in the tree and prints "1" for positions with value 1, and "_" for positions with no value.'''
