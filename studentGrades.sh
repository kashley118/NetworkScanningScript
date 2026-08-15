#!/bin/bash

echo -e "\n Enter your grade:\n"
read grade

if [ "$grade" -ge 90 ]; then 
    echo -e "\n You got an A+ \n"
	
elif [ "$grade" -eq 80 ] && [ "$grade" -le 89 ]; then
    echo -e "\n You got an A \n"
	
elif [ "$grade" -eq 70  ] && [ "$grade" -le 79 ]; then
    echo -e "\n You got a B \n"
	
elif [ "$grade" -eq 60 ] && [ "$grade" -le 69 ]; then
    echo -e "\n You got a C \n"
	
else 
    echo -e "\n Failed you have to retake the test \n"
	
fi


