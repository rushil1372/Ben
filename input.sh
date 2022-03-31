#!/bin/bash

echo "Hi, I'm Ben. Your personal bartender."

echo "What is your name?"

read name 

while true; do 
    read -p "Hello $name, Would you like a drink?" yn 
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "Have a great day!!!" 
                exit;;
        * ) echo "Please answer in yes or no...";;
    esac
done

echo "How old are you, $name?"

read age

if [ $age -le 21 ]
then 
    echo "You are too young to have a drink. Have this instead 🍹"
else
    echo "Enjoy your drink 🥃"
fi