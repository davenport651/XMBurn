#!/bin/bash

mag=$'\e[1;35m'
cyn=$'\e[1;36m'
white=$'\e[0m'

#These two lines activate huge pages when run as root
core=`nproc --all`
sysctl -w vm.nr_hugepages=$core > /dev/null 2>&1

#variables
#Nicehash version:
username="15ufDkou9LJrdWTizkVTkAeXTfFC7HT13t.cputest$RANDOM"
url="randomxmonero.usa.nicehash.com:3380"
#Private monero pool:
#username="45ynYARcmKcLZrB1kEfjsbCcGByjVqsCnhzAgLpN1xjnTzxRRp8F7tq3bXbnrW929mdRcyBSAHNTzjHap4Wgbc8FTWRaut9"
#url="pool.supportxmr.com:5555"

echo $cyn $username $white
#echo $cyn $url $white
echo $mag Burn in progress... $white


#Execute CPU burn-in test
#./xmrig --coin="monero" --url=$url --user=$username --pass="x" --nicehash --donate-level=40 --print-time=500
./xmrig --coin="monero" --url=$url --user=$username --pass="x" --nicehash --donate-level=40 --print-time=500 | egrep 'accepted|speed|(CPU.*AES)|esume|reject'
#./xmrig --coin="monero" --url=$url --user=$username --pass="cputest$RANDOM" --keepalive --donate-level=40 --print-time=500 | egrep 'accepted|speed|(CPU.*AES)|esume|reject'
