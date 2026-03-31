#!/bin/bash

echo "my first function in shell script"

#define a function
hello(){
    echo "hello from function"   
}

#calling function
hello

##############################################
pass paramter to function
##############################################

#!/bin/bash

echo "passing param to function"

add(){
    num1=$1
    num2=$2
    sum=$(( num1 + num2 ))
    echo "sum of $num1 + $num2 = $sum"
}

add 10 5
############################
return only accepts numeric exit codes (0–255)
You can not pass sum as return in shell script ❌
############################

#!/bin/bash
add(){
    echo $(( $1 + $2 ))
}

result=$(add 10 5)
echo "Result = $result"

#################################3
Why not use return?”
Answer:
Because return is only for exit status (0–255), not for returning actual data.

####################################
this how you will use $@ effectively to cpture all input 
###################################33
add-all-number(){
    sum=0
    for n in $@
    do 
        (( sum+=n ))
    done

    echo "total sum = $sum"
}

add-all-number 1 2 3 4 5 6 


###############################
redirect the function ouput
##############################

#!/bin/bash

echo " my name is xyz" > my-log.txt
echo " i like cars" > my-log.txt

################################
ouput - creted my-log.txt
in that file content --> i like cars
##############################
if you run this 
output will not shown on terminal as 
we redirect output in my-log.txt
but here i am using > operator it will overwrite the my-log.txt

1st it will add in my-log.txt
my name is xyz
and 2nd line as here also we are using > operator 
it will overwriet the my-log.txt file
and now in file content -- i like cars

if we >> then it append the content to file

#!/bin/bash

echo " my name is xyz" > my-log.txt
echo " i like cars" >> my-log.txt

ouput: my-log.txt -- >content of file 
my name is xyz
i like cars

############################################
nohup - it allow process to run background even if you logout or terminal close
nohup meaning no hang up 

Basic syntax 
nohup <cmd> &
here & - make sure process running background

############################################
#!/bin/bash

#it will stuck in infinite loop
count=1

while (( count > 0 ))
do
    echo "count : $count" 
done

################################################
syntax
nohup <cmd> > output 2>&1 &

nohup bash infinite-loop.sh > my-infi-output 2>&1 &
################################################
run above cmd it will run script background as here we use &
and even if you logout still process will run as here we use "nohup"
here we are redirect stdout to my-infi-output file and
also we are sending stderr(2>$1) to where stdoutput going 

################################################
kill this process

ps -ef | grep infinite-loop --> it will give you process ID 

kill <Process-ID>
###########################################3
