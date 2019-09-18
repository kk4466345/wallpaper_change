#!/bin/bash
# Passing arguments to a function
print_something () {
num1=$1
num2=1
num=`expr $num1 + $num2`  
sleep 3.0
kkm=$(ls $num.*)
/usr/bin/gsettings set org.mate.desktop.background picture-uri file:///$(pwd)/$kkm
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
