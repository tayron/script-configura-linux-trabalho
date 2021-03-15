#!/bin/bash

# -------------------------------------------------------------------
# ATUALIZANDO SISTEMA
# -------------------------------------------------------------------
sudo apt update
sudo apt-get upgrade

# -------------------------------------------------------------------
# ATUALIZANDO PACOTES DO SISTEMA
# -------------------------------------------------------------------
sudo apt update
sudo apt install software-properties-common apt-transport-https wget

# -------------------------------------------------------------------
# REMOVENDO FIREFOX
# -------------------------------------------------------------------
sudo apt-get purge firefox

# -------------------------------------------------------------------
# CHROME
# -------------------------------------------------------------------
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# -------------------------------------------------------------------
# VIM
# -------------------------------------------------------------------
sudo apt-get install vim

# -------------------------------------------------------------------
# GEDIT
# -------------------------------------------------------------------
sudo apt-get install gedit

# -------------------------------------------------------------------
# FILEZILLA
# -------------------------------------------------------------------
sudo apt-get install filezilla

# -------------------------------------------------------------------
# INKSCAPE
# -------------------------------------------------------------------
sudo apt-get install inkscape

# -------------------------------------------------------------------
# GIMP
# -------------------------------------------------------------------
sudo apt-get install gimp

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
sudo apt install git
git config --global user.email "contato@tayron.com.br"
git config --global user.name "Tayron Miranda"

# -------------------------------------------------------------------
# NodeJS
# -------------------------------------------------------------------
sudo apt install nodejs

# -------------------------------------------------------------------
# Update NodeJS to Last version
# -------------------------------------------------------------------
sudo npm cache clean -f
sudo npm install -g n

# -------------------------------------------------------------------
# NPM
# -------------------------------------------------------------------
sudo apt install npm

# -------------------------------------------------------------------
# Yarn
# -------------------------------------------------------------------
sudo npm install -g yarn

# -------------------------------------------------------------------
# Eslint
# -------------------------------------------------------------------
sudo npm install -g eslint

# -------------------------------------------------------------------
# Serverless framework
# -------------------------------------------------------------------
sudo npm install -g serverless

# -------------------------------------------------------------------
# AWS Client
# -------------------------------------------------------------------
sudo apt-get install awscli

# -------------------------------------------------------------------
# Docker and Docker-compose
# -------------------------------------------------------------------
sudo apt-get install docker.io
sudo apt-get install docker-compose
sudo usermod -aG docker ${USER}
su - ${USER}

# -------------------------------------------------------------------
# DBEAVER - Cliente SGBD para vários bancos de dados
# -------------------------------------------------------------------
wget https://dbeaver.io/files/7.3.5/dbeaver-ce_7.3.5_amd64.deb
sudo apt install ./dbeaver-ce_7.3.5_amd64.deb
rm dbeaver-ce_7.3.5_amd64.deb

# -------------------------------------------------------------------
# VSCODE
# -------------------------------------------------------------------
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

# -------------------------------------------------------------------
# TEAM VIEWER
# -------------------------------------------------------------------
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb
sudo rm teamviewer_amd64.deb

# -------------------------------------------------------------------
# KAZAM - Gravador de vídeo / tela / desktop
# -------------------------------------------------------------------
sudo apt-get install kazam

# -------------------------------------------------------------------
# KAZAM - Gravador de vídeo / tela / desktop
# -------------------------------------------------------------------
wget -O ./discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt install ./discord.deb

# -------------------------------------------------------------------
# Postman
# -------------------------------------------------------------------
sudo apt install snapd
sudo snap install postman

# -------------------------------------------------------------------
# Insomnia
# -------------------------------------------------------------------
# Add to sources
#echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
#    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

# Add public key used to verify code signature
#wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
#    | sudo apt-key add -

# Refresh repository sources and install Insomnia
#sudo apt-get update
#sudo apt-get install insomnia
