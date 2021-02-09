#!/bin/bash

declare -A matrix
echo -e "Enter the length of array:\c"
read num_rows

for(( i=1; i<=num_rows; i++ ))
do
   read number
    x=$number
    matrix[ $i ]=$x
done
echo "The triplets of given array are:"
for(( i=1; i<=num_rows-2; i++ ))
do
    for(( j=i+1; j<=num_rows-1; j++ ))
      do
        for(( k=j+1;k<=num_rows;k++ ))
          do
           if [ $(( ${matrix[ $i ]} + ${matrix[ $j ]} + ${matrix[ $k ]} )) -eq 0 ]
               then
                    echo -e "${matrix[ $i ]} \c"
                    echo -e "${matrix[ $j ]} \c"
                     echo "${matrix[ $k ]}"
            fi
            done
          done
       done
