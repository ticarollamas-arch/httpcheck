#!/bin/bash
# Script de Instalação e Preparação do Ambiente do Auditor
echo "=== Preparando diretórios para o Auditor Integridade ==="
mkdir -p config database reports logs

echo "=== Instalando dependências listadas no requirements.txt ==="
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "requirements.txt não encontrado! Instalando dependências recomendadas..."
    pip install requests colorama pyfiglet
fi

echo "=== Concluído! Você pode executar o auditor com: ==="
echo "python3 auditor_integridade.py --target google.com --porta 443"
