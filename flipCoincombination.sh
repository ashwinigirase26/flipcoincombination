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
