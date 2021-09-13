#!/bin/bash

echo " -------------------------------------------------------------------"
echo " POSTMAN"
echo " -------------------------------------------------------------------"

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

echo " -------------------------------------------------------------------"
echo " FIM DAS CONFIGURAÇÕES"
echo " -------------------------------------------------------------------"
