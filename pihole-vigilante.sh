#!/bin/bash

# Configuración
DISCORD_WEBHOOK="https://discord.com/api/webhooks/TU_WEBHOOK"  # Reemplaza con tu Webhook de Discord
MUNDO="$(cat /etc/hostname)"
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
RAM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
BLOCKED_COUNT=$(pihole -c | grep "Domains being blocked" | awk '{print $4}')
UPTIME=$(uptime -p)

# Crear mensaje para Discord
MESSAGE="**Pi-hole Vigilante Report:**
- **Mundo**: $MUNDO
- **Uso de CPU**: $CPU_USAGE%
- **Uso de RAM**: $RAM_USAGE%
- **Dominios bloqueados**: $BLOCKED_COUNT
- **Uptime**: $UPTIME"

# Enviar el mensaje a Discord
curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"$MESSAGE\"}" $DISCORD_WEBHOOK