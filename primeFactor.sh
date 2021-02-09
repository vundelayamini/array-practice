#!/bin/bash -x

echo "enter a number"
read number
array[0]=0
innerNumber=0
for (( i=2; i<number; i++ ))
do
    while (( $number%i==0 ))
       do
          array[((innernumber++))]=$i
           number=$(( $number/i ))
        done
done
if(( $number >2 ))
then
     echo $number
fi
echo ${array[@]}
