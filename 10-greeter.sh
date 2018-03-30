#/bin/sh

# function in bash

function weekend_greet 
{
   echo "Enjoy the weekend! Study Hard! ${1} ${2}!"
}

function weekday_greet
{
   echo "Hope you are working hard, ${1} ${2}!"
}


echo "Please enter your name"
read name

echo "Please enter your last name"
read lastName

day=$(date | cut -d' ' -f1)  # you can use this form instead of backticks

if [ $day = "Sat" ] || [ $day = "Sun" ]; then
   weekend_greet $name $lastName
else
   weekday_greet $name $lastName
fi

