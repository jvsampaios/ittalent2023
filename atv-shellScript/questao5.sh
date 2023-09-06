#!/bin/bash

adicao() {
    resultado=$(echo "$1 + $2" | bc)
    echo "Resultado da adição: $resultado"
}

subtracao() {
    resultado=$(echo "$1 - $2" | bc)
    echo "Resultado da subtração: $resultado"
}

multiplicacao() {
    resultado=$(echo "$1 * $2" | bc)
    echo "Resultado da multiplicação: $resultado"
}

divisao() {
    resultado=$(echo "scale=2; $1 / $2" | bc)
    echo "Resultado da divisão: $resultado"
}

echo "Calculadora"
echo "Selecione a operação:"
echo "1. Adição"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
read escolha

echo "Digite o primeiro número:"
read num1
echo "Digite o segundo número:"
read num2

case $escolha in
    1)
        adicao "$num1" "$num2"
        ;;
    2)
        subtracao "$num1" "$num2"
        ;;
    3)
        multiplicacao "$num1" "$num2"
        ;;
    4)
        divisao "$num1" "$num2"
        ;;
    *)
        echo "Opção inválida."
        ;;
esac
