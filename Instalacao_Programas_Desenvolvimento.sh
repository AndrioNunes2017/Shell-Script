#!/bin/bash

#Diretorio de saida do arquivo tar.gz
diretorio=

apt-get update && apt-get upgrade

echo "Deseja Instalar os Programas de Desenvolvimento: s/n"
read esc;

if [ "$esc" = "s" ]; then
 	apt-get install arduino

	apt-get install nodejs

	apt-get install npm

	apt-get install sublime-text

	apt-get install git
else
	echo "Nao Instalado"	
fi
	

echo "Deseja Instalar o Spring Tool e JavaFx: s/n"
read esc;

if [ "$esc" = "s" ]; then
 	dpkg -i ProgramasLinux/javafx_scenebuilder-2_0-linux-x64.deb

	tar -vzxf ProgramasLinux/spring-tool-suite-3.9.4.RELEASE-e4.7.3a-linux-gtk-x86_64.tar.gz -C $diretorio
else
	echo "Nao Instalado"	
fi

echo "Deseja Instalar o Google Chrome: s/n"
read esc;

if [ "$esc" = "s" ]; then
 	dpkg -i ProgramasLinux/google-chrome-stable_current_amd64.deb
else
	echo "Instalacao Finalizada"	
fi