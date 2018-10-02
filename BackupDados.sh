#!/bin/bash
#Nome das pastas
PastaSaida="DadosBackup"
PastaLog="Log"

#Diretorio onde fica as pastas para execução do shell
CriarPasta=

#Diretorio onde se encontram as pastas para backup
DirDocumentos=

#Diretorio Saida do backup e log
saida=""
saidaLog=""

while true;
do
if [ -e $saida ]
	then
		while read line 
			do 
				tar -cvzf $saida"$line"_$(date +%Y-%m-%d_%H-%M-%S).tar.gz $DirDocumentos$line > $saidaLog"Copia_Log"_"$line"_$(date +%Y-%m-%d_%H-%M-%S).txt

		done < $TSaida.txt
	break
else
	mkdir $CriarPasta/$PastaLog
	mkdir $CriarPasta/$PastaSaida
		touch $CriarPasta/InformacaoBackup.txt
		echo "============= ATENCAO ======================= "
		echo "Pasta DadosBackup Criada"
		echo "Pasta Log Criada"
		echo "Arquivo de texto criado"
		echo "Coloque o nome das pastas no arquivo de texto"
		echo "============================================= "
	break
fi
done