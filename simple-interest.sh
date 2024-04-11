#!/bin/bash


# Função para calcular o juros simples
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3


    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    amount=$(echo "$principal + $interest" | bc)


    echo "Principal: $principal"
    echo "Taxa de juros (%): $rate"
    echo "Tempo (anos): $time"
    echo "Juros: $interest"
    echo "Valor total: $amount"
}


# Interface interativa
echo "Bem-vindo à calculadora de juros simples!"
read -p "Digite o valor principal: " principal
read -p "Digite a taxa de juros (%): " rate
read -p "Digite o tempo (anos): " time


# Verifica se os valores fornecidos são números
if [[ ! $principal =~ ^[0-9]+$ || ! $rate =~ ^[0-9]+$ || ! $time =~ ^[0-9]+$ ]]; then
    echo "Erro: Insira apenas números para os valores."
    exit 1
fi


# Chama a função para calcular o juros simples
calculate_simple_interest $principal $rate $time


