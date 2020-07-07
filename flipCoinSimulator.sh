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
