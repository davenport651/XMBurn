# XMBurn
A bash shell script that downloads and executes xmrig miner with some pre-set configurations while simplifying the output. Useful as a stability testing tool (although there are no failsafes). Currently configured for Nicehash or a monero pool.

REQUIRES: wget; jq; tar
On Ubuntu: sudo apt install wget jq tar
On RHEL/Cent: yum install wget jq tar

- git clone https://github.com/davenport651/XMBurn.git
- execute <b>./xmburn.sh nh</b> for nicehash or <b>./xmburn.sh prv</b> for private pool

- Change the pool url or username variables in the case statement to whatever you require or use it as is.

- When a new version of xmrig is released, execute <b>./xmburn.sh update</b> to get the new version!
