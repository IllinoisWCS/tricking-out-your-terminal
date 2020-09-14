#!/bin/bash

echo "enter the password to continue: "

read -p "password: " password;
echo

if [ "$password" = "onwards" ]; then
    echo "congratulations on completing mission one";
    echo "for your next mission, choose your adventure: ";
    echo "  0. practice writing output to the command line";
    echo "  1. practice writing output to files";
    echo "  2. practice creating new files";
    read -n 1 -p "pick a number between 0 and 2: " choice;

    if [ "$choice" != "0" ] && [ "$choice" != "1" ] && [ "$choice" != "2" ] ; then
        echo "invalid choice";
        exit;
    fi

    echo
    echo "good choice. let us begin."
    echo

    mkdir endgame
    mkdir endgame/tunnel
    mkdir endgame/tunnel/tunnel
    mkdir endgame/tunnel/tunnel/tunnel
    mkdir endgame/tunnel/tunnel/tunnel/tunnel
    mkdir endgame/tunnel/tunnel/tunnel/tunnel/tunnel
    mkdir endgame/tunnel/tunnel/tunnel/tunnel/tunnel/tunnel
    mkdir endgame/tunnel/tunnel/tunnel/tunnel/tunnel/tunnel/tunnel
    mkdir endgame/tunnel/tunnel/tunnel/tunnel/tunnel/tunnel/tunnel/enemy_headquarters
    touch endgame/info.txt

    echo "The enemy headquarter lies at the end of the tunnel. Proceed." >> endgame/info.txt
    echo "You've reached the enemy hideout and completed your mission. Congratulations! Return to the main room." >> endgame/tunnel/tunnel/tunnel/tunnel/tunnel/tunnel/tunnel/enemy_headquarters/end.txt

    if [ "$choice" = "0" ]; then
        echo "your mission, should you choose to accept, is to write a shell script."
        echo "create a file called my_awesome_script.sh using any text editor of your choice"
        echo "you can do whatever in this script (be creative), but it must do at least these three things:"
        echo "  1. output hello world, our name is <team name>"
        echo "  2. change into the directory endgame"
        echo "  3. output a list of the files that are in that directory"
    elif [ "$choice" = "1" ]; then
        echo "your mission, should you choose to accept, is to write a shell script."
        echo "create a file called my_amazing_script.sh using any text editor of your choice"
        echo "you can do whatever in this script (be creative), but it must do at least these three things:"
        echo "  1. write hello world, our name is <team name> to a file called name.txt"
        echo "  2. change into the directory endgame"
        echo "  3. output a list of the files that are in that directory"
    elif [ "$choice" = "2" ]; then
        echo "your mission, should you choose to accept, is to write a shell script."
        echo "create a file called my_amazing_script.sh using any text editor of your choice"
        echo "you can do whatever in this script (be creative), but it must do at least these three things:"
        echo "  1. create a new file called hello-world-<team name>"
        echo "  2. change into the directory endgame"
        echo "  3. output a list of the files that are in that directory"
    fi

    echo
    echo "Officers -- information can be found in the mission_two_info.txt"

else 
    echo "incorrect password"
fi
