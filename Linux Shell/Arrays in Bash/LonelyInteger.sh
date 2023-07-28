#!/bin/bash
# There are N integers in an array A. All but one integer occur in pairs. Your task is to find the number that occurs only once.
#
# Constraints
# 1 <= N <= 100
# N % 2 = 1 (N is an odd number)
# 0 <= A[i] <= 100, where 0 <= i < N

# Solution 1
read
arr=($(cat))
echo ${arr[@]} | tr ' ' '\n' | sort | uniq -u

# Solution 2
read
arr=($(cat))
arr=${arr[*]}
echo $((${arr// /^}))

# Solution 3
i=0
while read line
do
    arr[$i]=$line
    ((i+=1))
done
arr=${arr[*]}
echo $((${arr// /^}))