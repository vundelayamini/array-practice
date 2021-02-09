#!/bin/bash -x

read -p "Enter lower limit: " lowerLimit
read -p "Enter upper limit: " upperLimit

numInBetween=$(( $upperLimit - $lowerLimit ))
counter=0
declare -a outputArray
declare -a array

for (( i=0; i<=$numInBetween; i++ ))
do
  flag=1
  array[i]=$lowerLimit
   ((lowerLimit++))
   if [ ${array[$i]} -ge 10 ]
      then
          flag=0
          num=${array[$i]}
          lengthOfValue=${#array[$i]}
#Here it will take one number and stores each digit in a new array
 for (( j=0; j<$(($lengthOfValue-1)); j++ ))
   do
     numArray[j]=$(($num%10))
     num=$(($num/10))
   if [ $num -lt 10 ]
     then
        numArray[(($j+1))]=$num
    fi
done
#Here it will compares all consecutive digits
for (( k=0; k<$(($lengthOfValue-1)); k++ ))
do
  if [ ${numArray[$k]} -ne ${numArray[$(($k+1))]} ]
     then
       flag=1
        break
    fi
done
fi
#It will stores repeated digits in array
if [ $flag -eq 0 ]
then
    outputArray[$counter]=${array[$i]}
     ((counter++))
fi
done
echo ${outputArray[@]}
