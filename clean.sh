if [[ -d "purple_team_hq" ]]; then
    rm -rf purple_team_hq;
fi

if [[ -d "red_team_hq" ]]; then
    rm -rf red_team_hq;
fi

if [[ -d "blue_team_hq" ]]; then
    rm -rf blue_team_hq;
fi

if [[ -d "mission_one" ]]; then
    rm -rf mission_one;
fi

if [[ -f "get_mission_two.sh" ]]; then
    rm get_mission_two.sh
fi

if [[ -d "endgame" ]]; then
    rm -rf endgame;
fi