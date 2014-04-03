#!/bin/sh
SERVICE='python ./run_p2pool.py --net potcoin'


if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
# Customize these for your node. -f node fee% -a default payout address --give-author p2pool donation%
        sudo screen -d -m -S P2P_POT_DIFF python ./run_p2pool.py --net potcoin --give-author 0 --disable-upnp -f 1 -a P8iiuoikGC8UkKvxk8WN1vLaeS158JiFEy

        wait
fi
