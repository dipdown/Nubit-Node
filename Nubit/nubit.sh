#!/bin/bash

echo "Wait for Node..."
wget -O loader.sh https://raw.githubusercontent.com/DiscoverMyself/Nubit-Node/main/loader.sh && chmod +x loader.sh && ./loader.sh
curl -s https://raw.githubusercontent.com/DiscoverMyself/Nubit-Node/main/logo.sh | bash
sleep 2

cd $HOME

sudo apt update
sudo apt --fix-broken install -y
sudo apt upgrade -y
sudo apt install -y tmux
sudo echo "deb http://security.ubuntu.com/ubuntu jammy-security main" >> /etc/apt/sources.list
sudo apt -qy update && sudo apt -qy install libc6

# rm -rf nubit-node $HOME/.nubit-light-nubit-alphatestnet-1
rm -rf nubit-node

tmux new -s nubit "curl -sL1 https://nubit.sh | bash"

echo "Script Execution Completed Successfully."