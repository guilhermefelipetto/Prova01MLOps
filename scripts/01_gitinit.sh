#!/bin/bash

# Verificar se o número correto de argumentos foi fornecido
if [ "$#" -ne 2 ]; then
    echo "Necessário passar <Nome> e <Email>"
    exit 1
fi

# Extrair argumentos para variáveis
NAME="$1"
EMAIL="$2"

# Configurar globalmente o nome e o email do usuário para o Git
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global --add safe.directory /home/developer/scripts
git config --global init.defaultBranch master


# Inicializar o diretório atual como um repositório Git
git init
echo "Repositório Git foi inicializado e as configurações globais do usuário foram atualizadas."