#!/bin/bash

echo "Por favor, insira o nome do arquivo de texto:"
read arquivo

if [ ! -f "$arquivo" ]; then
    echo "O arquivo $arquivo não existe."
    exit 1
fi

numero_de_palavras=$(wc -w < "$arquivo")
echo "O arquivo $arquivo contém $numero_de_palavras palavras."
