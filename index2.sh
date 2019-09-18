#!/bin/bash
# Passing arguments to a function
print_something () {
num1=$1
num2=1
num=`expr $num1 + $num2`  
sleep 3.0
kkm=$(ls $num.*)

path=$PWD/$kkm
echo $path
dconf write /org/mate/desktop/background/picture-filename "'$path'"

echo $kkm
        if [ $num -eq 7 ]
        then
                num=0
                print_something $num
	else	
		print_something $num

        fi

}



print_something 0
