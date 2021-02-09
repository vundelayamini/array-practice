#!/bin/bash -x

MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]
do
     number[$count]=$((100+$RANDOM%899))
        let "count += 1"
done

if [ "${#number[@]}" -lt 2 ]
then
       echo Incoming array is not large enough >&2
 exit 1
fi

largest=${number[0]}
secondGreatest='unset'

for((i=1; i < ${#number[@]}; i++))
do
     if [[ ${number[i]} > $largest ]]
     then
          secondGreatest=$largest
           largest=${number[i]}
     elif (( ${number[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[  ${number[i]} > $secondGreatest ]]; }  
      then
            secondGreatest=${number[i]}
       fi
done

smallest=${number[0]}
secondSmallest='unset'
for((i=1; i < ${#number[@]}; i++))
do
 if [[ ${number[i]} < $smallest ]]
   then
       secondSmallest=$smallest
        smallest=${number[i]}
  elif (( ${number[i]} -ne $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[  ${number[i]} < $secondSmallest ]]; }
     then
         secondSmallest=${number[i]}
     fi
done
echo "${number[*]}"
echo "secondGreatest = $secondGreatest"
echo "secondSmallest = $secondSmallest"
