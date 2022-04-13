#!/bin/bash


# JDK INSTALL
sudo apt install openjdk-8-jdk

# NVM INSTALL
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc

# NODE INSTALL
nvm install 9.11.1
nvm use 9.11.1

