#!/bin/bash

# Configuración
DISCORD_WEBHOOK="https://discord.com/api/webhooks/TU_WEBHOOK"  # Reemplaza con tu Webhook de Discord
IP_RANGE="192.168.1.0/24"  # Rango de IPs de tu red local

# Escanear la red para detectar dispositivos
NEW_DEVICES=$(nmap -sn $IP_RANGE | grep "Nmap scan report for" | cut -d " " -f 5)

# Si hay nuevos dispositivos, enviar mensaje a Discord
if [ ! -z "$NEW_DEVICES" ]; then
    MESSAGE="**Nuevos dispositivos en la red:**
    $NEW_DEVICES"

    # Enviar mensaje a Discord
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"$MESSAGE\"}" $DISCORD_WEBHOOK
fi