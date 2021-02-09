#!/bin/bash -x

for (( counter=0; counter<10; counter++ ))
do
   random[((counter))]=$((RANDOM%900+100))
done

echo -n "second largest is: "
printf '%s\n' "${random[@]}" | sort -nr | head -2 | tail -1
echo -n "second smallest is: "
printf '%s\n' "${random[@]}" | sort -n | head -2 | tail -1
