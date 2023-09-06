#!/bin/bash

echo "Digite o tamanho da senha desejada:"
read tamanho

if ! [[ "$tamanho" =~ ^[0-9]+$ ]]; then
    echo "Tamanho inválido. Por favor, insira um número inteiro positivo."
    exit 1
fi

caracteres="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
senha=""

for (( i = 0; i < tamanho; i++ )); do
    caractere_aleatorio=$(cat /dev/urandom | tr -dc "$caracteres" | head -c 1)
    senha="$senha$caractere_aleatorio"
done

echo "Senha gerada: $senha"
