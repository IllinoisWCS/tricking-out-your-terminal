echo "your mission, should you choose to accept, is to infiltrate ${enemy} team's headquarters";
echo "if you accept this mission, destroy evidence of the existence of this folder";
echo "then, run accept.sh for more information";

echo "#!/bin/bash" > accept.sh;
echo "dirname=${dirname}" >> accept.sh;
echo "enemy=${enemy}" >> accept.sh;
cat GENERATOR_FILES/mission_one.sh >> accept.sh;
