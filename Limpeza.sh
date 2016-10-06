
#!/bin/bash

# Programa de limpeza do sitema Linux
# Robson Viana Xavier


echo " Atualizando source.list do sistema "
sudo apt update
clear
echo ""
echo ""
echo " Atualizando os programas do sistema "
sudo apt dist-upgrade -V -y
clear
echo ""
echo ""
echo " Limpando a lixeira  "
sudo rm -rf /home/$USER/.local/share/Trash/files/*
echo ""
echo ""
echo " Limpando a pasta TMP "
sudo rm -rf /var/tmp/*
echo ""
echo ""
echo " Exclusão de cache inúteis do sitema, cópias de atualizações do gerenciador "
sudo apt clean -y
echo ""
echo ""
echo " Exclusão de programas que não estão sendo mais utilizados pelo sistema "
sudo apt autoremove -y
echo ""
echo ""
echo " Exclusão de arquivos duplicados "
sudo apt autoclean -y
echo ""
echo ""
echo " Reparando pacotes quebrados durante a atualização "
sudo dpkg --configure -a
echo ""
echo ""
echo " Atualizando cache do Prelink "
sudo /etc/crom.daily/prelink
clear
echo ""
echo ""
echo " Limpeza concluída! "
sleep 8
exit