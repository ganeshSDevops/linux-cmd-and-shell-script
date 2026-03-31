#!/bin/bash

input_number=$1

# check input
if [[ -z "$input_number" ]]; then
    echo "Please provide a number"
    exit 1
fi

while [[ $input_number -ge 0 ]]
do
    echo "input number = $input_number"
    input_number=$(( input_number - 1 ))
done


################################3
👉 Use arithmetic loop (( )) instead of [[ ]]
#!/bin/bash

input_number=$1

if [[ -z "$input_number" ]]; then
    echo "Provide a number"
    exit 1
fi

while (( input_number >= 0 ))
do
    echo "input number = $input_number"
    ((input_number--))
done

#####################################
#until code
🧠 Important Concept
until loop runs while condition is FALSE
(opposite of while)


#!/bin/bash

count=10

until (( count > 10))
do
    echo "count = $count"
    ((count++))
done

################################
for loop
################################

#!/bin/bash

for i in 1 2 3 4 5
do 
    echo "number : $i"
done

#####################
# find even nuber from 0 -50
#!/bin/bash
for i in {1..100}
do 
    if (( i%2 == 0))
    then 
        echo "$i"
    fi
done

#####################
for (( i=1; i<=10; i++ ))
do
    if (( i % 2 == 0 )); then
        echo $i
    fi
done
##################

#find sum of 1st 10 number
sum=0
for (( i=1; i<10; i++ ))
do
    (( sum+=i ))
done

echo "sum of 1..10 = $sum"
###########################
######################
🔥 Pro Tip (Very Important)
👉 Prefer:
for (( )) → for numbers
for in → for lists/files
###########################
######################

#############################
loop control using break and continue
#############################

for i in {1..5}
do
    if (( i == 3 )); then
        break
    fi
    echo $i
done
##################
output
1
2
##################
##################
for i in {1..5}
do
    if (( i == 3 )); then
        continue
    fi
    echo $i
done
##################
output
1
2
4
5
##################
##################