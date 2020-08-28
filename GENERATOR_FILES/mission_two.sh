#!/bin/bash

echo "enter the password to continue: "

read -n 7 -p "password: " password;
echo

if [ $password == "onwards" ]; then
    echo "congratulations on completing mission one";
    echo "for your next mission, choose your adventure: ";
    read -n 1 -p "pick a number between 0 and 2" choice;

    if [ $choice -lt 0 || $choice -gt 2 ]; then
        echo "invalid choice";
        exit;
    fi

    echo "good choice. let us begin."

    if [ $choice == 0 ]; then
        echo "your mission, should you choose to accept, is to write a shell script"
        echo "create a file called my_awesome_script.sh"
        echo "you can do whatever in this script (be creative), but it must do at least all of the following:"
        echo "1. output hello world, our name is <team name>"
        echo "2. take a user input"
        echo "3. output the user's input"
    fi

else 
    echo "incorrect password"
fi
