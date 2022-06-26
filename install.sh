#! /bin/bash

sudo apt-get update -y
sudo apt install -y curl wget rar unrar nload snapd
sudo apt install -y python3-pip
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
sudo apt install -y python3-venv
python3 -m pip install pipenv
sudo apt-get install ffmpeg -y

sudo apt install tasksel -y
sudo apt-get install kubuntu-desktop^ -y

#sudo apt-get install zsh -y
#zsh
#sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
#
#sudo snap install jdownloader2 -y
#sudo snap install telegram-desktop -y

