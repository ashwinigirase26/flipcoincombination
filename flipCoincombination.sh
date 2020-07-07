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

#Doublet  Combination HH TH TT HT
DIC[HH]=0
DIC[TT]=0
DIC[TH]=0
DIC[HT]=0

for ((TURN=0; TURN<$FLIP; TURN++))
do
	COIN_SIDE=$((RANDOM%4))
	if [ $COIN_SIDE -eq 0 ]
	then
		VAL=${DIC[HH]}
		DIC[HH]=$((VAL+1))
	elif [ $COIN_SIDE -eq 1 ]
	then
		VAL=${DIC[TT]}
		DIC[TT]=$((VAL+1))
	elif [ $COIN_SIDE -eq 2 ]
	then
		VAL=${DIC[HT]}
		DIC[HT]=$((VAL+1))
	else
		VAL=${DIC[TH]}
		DIC[TH]=$((VAL+1))
	fi
done

echo "Percent of HH is :"
VAL=${DIC[HH]}
dic[HH]=`echo "scale=2;$VAL/$FLIP*100"|bc`
echo ${DIC[HH]}
echo "Percent of TT is :"
VAL=${DIC[TT]}
DIC[TT]=`echo "scale=2;$VAL/$FLIP*100"|bc`
echo ${DIC[TT]}
echo "Percent of HT is :"
VAL=${DIC[HT]}
DIC[HT]=`echo "scale=2;$VAL/$FLIP*100"|bc`
echo ${DIC[HT]}
echo "Percent of TH is :"
VAL=${DIC[TH]}
DIC[TH]=`echo "scale=2;$VAL/$FLIP*100"|bc`
echo ${DIC[TH]}
