# XMBurn
A shell script that executes xmrig miner with some pre-set configurations while obfuscating the output. Currently configured for Nicehash or a monero pool. Could be used as a stability testing tool (although there are no failsafes).

- Download and unpack the xmrig binary for linux: https://github.com/xmrig/xmrig/releases
- Move xmburn.sh and the xmrig binary into the same directory
- Change the pool url or username variables in xmburn.sh to whatever suits you or use it as is.
- from the terminal, execute <b>./xmburn.sh nh</b> for nicehash or <b>./xmburn.sh pvt</b> for private pool
