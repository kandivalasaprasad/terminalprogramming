#!/bin/bash -x
#!/bin/bash -x

declare -A dice 
count=0
value1=0
j=0
for ((i=1; i<=6; i++ ))
do
  dice[$i]=0
done
echo "initial:-"
echo "key values : ${!dice[@]}"
echo "no of time :${dice[@]}"
limit=15
declare -a maximum
function find_repeat_max()
{
 while [ $count -lt 2 ]
 do
      num=$((RANDOM%6 + 1))
         case $num in
             1)
              ((dice[$num]++))
             ;;
             2)
             ((dice[$num]++))
              ;;
            3)
            ((dice[$num]++))
              ;; 
            4)
             ((dice[$num]++))
             ;;
            5)
            ((dice[$num]++))
            ;;
            6)
           ((dice[$num]++))
            ;; 
            *) 
           echo "not a valid input"
            ;;
          esac

          
           for (( i=1; i<=6 ; i++ ))  
           do
              if [ ${dice[$i]} -gt $limit ]
               then
                  ((count++))
               fi
             done
             if [ $((count)) -ne 2 ]
            then
             let  count=0
            fi
  
done

echo "dice key value         :${!dice[@]}"
echo "no. of times dice come :${dice[@]}"
 
max=0
value=0
declare -a key
i=0
while [ $i -lt 2 ]
do 
for (( j=1; j<=6 ; j++ ))  
do 
   if [ ${dice[$j]} -gt $max ]
  then
    max=${dice[$j]}
     value=$j
   fi    
done
dice[$value]=0
maximum[$i]=$max
key[$i]=$value
((i++))
max=0
value=0
done  
echo " ${key[0]} repeated first maximum  ${maximum[0]} times"
echo " ${key[1]} repeated second maximum  ${maximum[1]} times"

}


find_repeat_max
