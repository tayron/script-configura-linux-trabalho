#!/bin/bash

GIT_NOME = "Tayron Miranda"
GIT_EMAIL = "contato@tayron.com.br"

echo "# -------------------------------------------------------------------"
echo "# ATUALIZANDO SISTEMA"
echo "# -------------------------------------------------------------------"
sudo apt update
sudo apt-get upgrade

echo " -------------------------------------------------------------------"
echo " ATUALIZANDO PACOTES DO SISTEMA"
echo " -------------------------------------------------------------------"
sudo apt update
sudo apt install software-properties-common apt-transport-https wget

echo " -------------------------------------------------------------------"
echo " REMOVENDO FIREFOX"
echo " -------------------------------------------------------------------"
sudo apt-get purge firefox

echo " -------------------------------------------------------------------"
echo " CHROME"
echo " -------------------------------------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

echo " -------------------------------------------------------------------"
echo " VIM"
echo " -------------------------------------------------------------------"
sudo apt-get install vim

echo " -------------------------------------------------------------------"
echo " GEDIT"
echo " -------------------------------------------------------------------"
sudo apt-get install gedit

echo " -------------------------------------------------------------------"
echo " FILEZILLA"
echo " -------------------------------------------------------------------"
sudo apt-get install filezilla

echo " -------------------------------------------------------------------"
echo " INKSCAPE"
echo " -------------------------------------------------------------------"
sudo apt-get install inkscape

echo " -------------------------------------------------------------------"
echo " GIMP"
echo " -------------------------------------------------------------------"
sudo apt-get install gimp

echo " -------------------------------------------------------------------"
echo " GIT"
echo " -------------------------------------------------------------------"
sudo apt install git
git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NOME

echo " -------------------------------------------------------------------"
echo " NODEJS"
echo " -------------------------------------------------------------------"
sudo apt install nodejs

echo " -------------------------------------------------------------------"
echo " ATUALIZANDO NODEJS PARA ÚLTIMA VERSÃO"
echo " -------------------------------------------------------------------"
sudo npm cache clean -f
sudo npm install -g n

echo " -------------------------------------------------------------------"
echo " NPM"
echo " -------------------------------------------------------------------"
sudo apt install npm

echo " -------------------------------------------------------------------"
echo " YARN"
echo " -------------------------------------------------------------------"
sudo npm install -g yarn

echo " -------------------------------------------------------------------"
echo " ESLINT"
echo " -------------------------------------------------------------------"
sudo npm install -g eslint

echo " -------------------------------------------------------------------"
echo " SERVERLESS FRAMEWORK"
echo " -------------------------------------------------------------------"
sudo npm install -g serverless

echo " -------------------------------------------------------------------"
echo " AWS CLIENT"
echo " -------------------------------------------------------------------"
sudo apt-get install awscli

echo " -------------------------------------------------------------------"
echo " DOCKER E DOCKER-COMPOSE"
echo " -------------------------------------------------------------------"
sudo apt-get install docker.io
sudo apt-get install docker-compose
sudo usermod -aG docker ${USER}
su - ${USER}

echo " -------------------------------------------------------------------"
echo " DBEAVER - Cliente SGBD para vários bancos de dados"
echo " -------------------------------------------------------------------"
wget https://dbeaver.io/files/7.3.5/dbeaver-ce_7.3.5_amd64.deb
sudo apt install ./dbeaver-ce_7.3.5_amd64.deb
rm dbeaver-ce_7.3.5_amd64.deb

echo " -------------------------------------------------------------------"
echo " VSCODE"
echo " -------------------------------------------------------------------"
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

echo " -------------------------------------------------------------------"
echo " TEAM VIEWER"
echo " -------------------------------------------------------------------"
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb
sudo rm teamviewer_amd64.deb

echo " -------------------------------------------------------------------"
echo " KAZAM - Gravador de vídeo / tela / desktop"
echo " -------------------------------------------------------------------"
sudo apt-get install kazam

echo " -------------------------------------------------------------------"
echo " DISCORD"
echo " -------------------------------------------------------------------"
wget -O ./discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt install ./discord.deb

echo " -------------------------------------------------------------------"
echo " POSTMAN"
echo " -------------------------------------------------------------------"
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
sudo ln -s /opt/Postman/Postman /usr/bin/postman
sudo rm postman.tar.gz

sudo su

cat > /usr/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

exit

echo " -------------------------------------------------------------------"
echo " INSOMNIA"
echo " -------------------------------------------------------------------"
# Add to sources
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

# Add public key used to verify code signature
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

# Refresh repository sources and install Insomnia
sudo apt-get update
sudo apt-get install insomnia
