#!/bin/bash

diretorio="/var/log"

if [ ! -d "$diretorio" ]; then
    echo "O diretório $diretorio não existe."
    exit 1
fi

find "$diretorio" -name "*.log" -type f -mtime +7 -exec rm {} \;

echo "Arquivos .log com mais de 7 dias foram removidos com sucesso."
