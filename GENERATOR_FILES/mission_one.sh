if [[ -d $dirname ]]; then
    echo "you must destroy your instructions to continue. try again after you have destroyed the hq directory.";
    exit;
fi

echo "you have accepted this mission. let us begin.";

mkdir mission_one;

cat GENERATOR_FILES/mission_one.txt >> mission_one/instructions.txt;

echo "navigate into the mission_one directory" ;
echo "find your instructions";
echo "and display the file contents in the command line";

echo "this message will now self destruct";

rm accept.sh;