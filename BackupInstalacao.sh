#!/bin/bash

#Nome da pasta diretorio que sera efetuado o backup
NPasta="Pendrive_Instalacao"

#Nome do arquivo que sera criado
BPasta="Backup_Pendrive_Instalacao"

#Diretorio para verificar se a pasta esta vazia
TestaDiretorio=`ls //$NPasta | wc -l`

#Diretorio onde o arquivo e copiado
diretorio=

#Diretorio de saida do backup
#Diretorio onde a pasta se encontra
saida=

#Diretorio do pen drive
DirPenDrive=

while [[ true ]]; do
	if [[ $TestaDiretorio -eq 0 ]]; then
		cp -R $DirPenDrive* $diretorio
		echo "== Copia de aulas realizadas =="
		tar -cvzf $saida"$BPasta"_$(date +%Y-%m-%d_%H-%M-%S).tar.gz $saida"$NPasta"
		echo "== Compactacao realizada =="
		rm -rf $diretorio*
		echo "== Limpeza de pasta efetuada =="
		break;
	else
		rm -rf $diretorio*
		echo "== Limpeza de pasta efetuada =="
		./BackupInstalacao.sh
		break;
	fi
done