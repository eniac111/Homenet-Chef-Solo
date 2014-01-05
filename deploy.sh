#!/bin/bash

# Usage: ./deploy.sh [host]

host="${1:-blago@10.28.6.91}"

ssh-keygen -R "${host#*@}" 2> /dev/null


tar cj . | ssh -o 'StrictHostKeyChecking no' "$host" '
sudo rm -rf ~/chef &&
mkdir ~/chef &&
cd ~/chef &&
tar xj &&
sudo bash install.sh'