#!/bin/bash

nomeCadastroGithub="Tayron Miranda"
usuarioGithub="tayron"
emailGithub="contato@tayron.com.br"

echo "# -------------------------------------------------------------------"
echo "# ATUALIZANDO SISTEMA"
echo "# -------------------------------------------------------------------"
sudo apt-get update -y
sudo apt-get upgrade -y

echo " -------------------------------------------------------------------"
echo " ATUALIZANDO PACOTES DO SISTEMA"
echo " -------------------------------------------------------------------"
sudo apt install -y software-properties-common apt-transport-https wget

echo " -------------------------------------------------------------------"
echo " INSTALANDO VLC"
echo " -------------------------------------------------------------------"
sudo apt-get install -y vlc

echo " -------------------------------------------------------------------"
echo " CHROME"
echo " -------------------------------------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

echo " -------------------------------------------------------------------"
echo " VIM"
echo " -------------------------------------------------------------------"
sudo apt-get install -y vim

echo " -------------------------------------------------------------------"
echo " LINSSID"
echo " -------------------------------------------------------------------"
sudo apt-get install -y linssid

echo " -------------------------------------------------------------------"
echo " CURL"
echo " -------------------------------------------------------------------"
sudo apt install -y curl

echo " -------------------------------------------------------------------"
echo " GOLANG"
echo " -------------------------------------------------------------------"
sudo apt-get install -y golang

echo " -------------------------------------------------------------------"
echo " GEDIT"
echo " -------------------------------------------------------------------"
sudo apt-get install -y gedit

echo " -------------------------------------------------------------------"
echo " FILEZILLA"
echo " -------------------------------------------------------------------"
sudo apt-get install -y filezilla

echo " -------------------------------------------------------------------"
echo " INKSCAPE"
echo " -------------------------------------------------------------------"
sudo apt-get install -y inkscape

echo " -------------------------------------------------------------------"
echo " GIMP"
echo " -------------------------------------------------------------------"
sudo apt-get install -y gimp

echo " -------------------------------------------------------------------"
echo " GIT"
echo " -------------------------------------------------------------------"
sudo apt install -y git
git config --global user.email "$emailGithub"
git config --global user.name "$usuarioGithub"

echo " -------------------------------------------------------------------"
echo " NPM"
echo " -------------------------------------------------------------------"
sudo apt install -y npm

echo " -------------------------------------------------------------------"
echo " NVM"
echo " -------------------------------------------------------------------"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

echo " -------------------------------------------------------------------"
echo " RECARREGANDO VARIAVEIS DE AMBIENTE"
echo " -------------------------------------------------------------------"
source ~/.profile

echo " -------------------------------------------------------------------"
echo " INSTALANDO NODE V14.16.0"
echo " -------------------------------------------------------------------"
nvm install v14.16.1


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
echo " ATUALIZAR AWS CLIENT"
echo " -------------------------------------------------------------------"
cd ~/Downloads
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "aws.zip"
unzip aws.zip
sudo ./aws/install --install-dir /usr/bin --update

echo " -------------------------------------------------------------------"
echo " DOCKER E DOCKER-COMPOSE"
echo " -------------------------------------------------------------------"
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose
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
sudo apt install -y code

echo " -------------------------------------------------------------------"
echo " TEAM VIEWER"
echo " -------------------------------------------------------------------"
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install -y ./teamviewer_amd64.deb
sudo rm teamviewer_amd64.deb

echo " -------------------------------------------------------------------"
echo " KAZAM - Gravador de vídeo / tela / desktop"
echo " -------------------------------------------------------------------"
sudo apt-get install -y kazam

echo " -------------------------------------------------------------------"
echo " DISCORD"
echo " -------------------------------------------------------------------"
wget -O ./discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt-get install -y ./discord.deb
sudo rm discord.deb

echo " -------------------------------------------------------------------"
echo " POSTMAN"
echo " -------------------------------------------------------------------"
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
sudo ln -s /opt/Postman/Postman /usr/bin/postman
sudo rm postman.tar.gz

echo " -------------------------------------------------------------------"
echo " FIM DAS CONFIGURAÇÕES"
echo " -------------------------------------------------------------------"
