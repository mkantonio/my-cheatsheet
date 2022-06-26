#! /bin/bash

sudo apt-get update -y
sudo apt install -y curl wget rar unrar nload snapd python3-pip micro atool
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev pipenv
sudo apt-get install -y ffmpeg

sudo apt install tasksel -y
sudo apt-get install kubuntu-desktop^ -y

#reboot
#systemctl set-default graphical.target
#sudo apt install xrdp -y
#sudo systemctl status xrdp
#sudo apt-get install zsh -y
#zsh
#sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
#
#sudo snap install jdownloader2 -y
#sudo snap install telegram-desktop -y

#wget https://github.com/lay295/TwitchDownloader/releases/download/1.40.7/TwitchDownloaderCLI-Linux-x64.zip
#sudo chmod +x TwitchDownloaderCLI
#./TwitchDownloaderCLI -m VideoDownload --id 1514740540 -o 1514740540.mp4
