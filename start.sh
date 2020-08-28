#!/bin/bash

function welcome_to_hq {
    local dirname=$1;
    local teamname=$2;
    local enemy=$3;

    echo "#!/bin/bash" > $dirname/your_mission.sh;
    echo "teamname=${teamname}" >> $dirname/your_mission.sh;
    echo "enemy=${enemy}" >> $dirname/your_mission.sh;
    echo "dirname=${dirname}" >> $dirname/your_mission.sh;
    cat GENERATOR_FILES/your_mission.sh >> $dirname/your_mission.sh;
}

function join_team {
    local teamname=$1;
    local enemy=$2;

    echo "you have joined the ${teamname} team. excellent choice.";

    local dirname="${teamname}_team_hq";
    mkdir $dirname;

    echo "begin your adventure running ${dirname}/your_mission.sh";

    welcome_to_hq $dirname $teamname $enemy;
}

echo "hello, and welcome to wcs explorations' tricking our your terminal workshop.";
echo "if at any point you messed up and need to start over from the beginning, run clean.sh";
echo "to begin, choose your team:";
echo "0 - purple";
echo "1 - red";
echo "2 - blue";

read -n 1 -p "choice: " team;
echo;

if [ $team -eq 0 ]; then
    join_team purple red
elif [ $team -eq 1 ]; then
    join_team red blue
elif [ $team -eq 2 ]; then
    join_team blue purple
else
    echo "error, invalid choice.";
fi
