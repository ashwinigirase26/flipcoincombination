#!/bin/bash -x
echo "As a Simulator start with Flipping a Coin to Display Heads or tails"
heads=0
tails=0

no=$((RANDOM%2))
if [ $no -eq 1 ]
  then
	echo "head win $no"
 else
	echo "tails win $no"
  fi
#loop for simulator
hwin=0
twin=0
while [ $hwin -lt 21 ] && [ $twin -lt 21 ]
do
	toss=$((RANDOM%2))
	if [ $toss -eq 1 ]
	then
		echo "HEAD"
		((hwin++))
	else
		echo "TAILS"
		((twin++))
	fi
done
echo "NO OF TIME HEAD WIN"$hwin
echo "NO OF TIME TAIL WIN"$twin

if [ $hwin -gt $twin ]
then
echo "HEAD WIN BY"$((hwin-twin))
else
echo "TAILS WIN BY"$((hwin-twin))
fi

#Modify the earlier UC 2 to continue till either of them have won 21 times. Show if it’s a Win
#or Tie. If Win then who won and by how much
echo " Modify the earlier UC 2 to continue till either of them have won 21 times. Show if it’s a Win or Tie. If Win then who won and by how much"
for((i=1;i<60;i++))
do
        no=$((RANDOM%2))
        if [ $no -eq 1 ]
        then
                (( heads ++ ))
                echo "head count: $heads"
        else
                 (( tails ++ ))
                 echo "tail count: $tails"
        fi
        if [ $heads -eq 21 ]
        then
                echo "heads win"
                break
        elif [ $tails -eq 21 ]
        then
                echo "tails win"
                break
        fi

done

