#Flip Coin Combination
#!/bin/bash -x

#flip coin
COIN_SIDE=$((RANDOM % 2))
if [ $COIN_SIDE -eq 1 ]
then
        echo "Head wins"
else
        echo "Tail wins"
fi

##percentage of singlet combination

read -p "ENTER NO OF Flip:" FLIP
declare -A DIC
DIC[H]=0
DIC[T]=0
for ((TURN=0;TURN<$FLIP;TURN++))
do
	COIN_SIDE=$((RANDOM % 2))
	if [ $COIN_SIDE -eq 0 ]
	then
		VAL=${DIC[H]}
		DIC[H]=$((VAL+1))
	else
		VAL=${DIC[T]}
		DIC[T]=$((VAL+1))
	fi
done
VAL=${DIC[H]}
echo "Percent of heads is :" 
echo "scale=2;$VAL/$FLIP*100"|bc 
VAL=${DIC[T]}
echo "Percent of tails is :" 
echo "scale=2;$VAL/$FLIP*100"|bc
