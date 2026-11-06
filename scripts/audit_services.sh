#!/bin/bash
# ==============================================================================
# Script: audit_services.sh
# Descrição: Auditoria básica de processos e serviços para Hardening (AWS re/Start)
# ==============================================================================

LOG_FILE="hardening_audit.log"
DATA=$(date "+%Y-%m-%d %H:%M:%S")

echo "==========================================" >> $LOG_FILE
echo " AUDITORIA DE SISTEMA - $DATA" >> $LOG_FILE
echo "==========================================" >> $LOG_FILE

echo "[*] A verificar processos ativos em segundo plano..."
# Lista os processos em execução para análise de serviços desnecessários
ps aux --sort=-%mem | head -n 10 >> $LOG_FILE

echo "" >> $LOG_FILE
echo "[*] A verificar portas abertas e escutas de rede..."
# Utiliza netstat ou ss para verificar portas de escuta (serviços expostos)
if command -v ss &> /dev/null; then
    ss -tulpn >> $LOG_FILE
else
    netstat -tulpn >> $LOG_FILE
fi

echo "Auditoria concluída. Relatório guardado em $LOG_FILE"
