# Pi-hole Discord Notifier

Este proyecto permite monitorear la actividad de Pi-hole y notificar alertas en Discord sobre los cambios en la red y el estado de Pi-hole.

## Requisitos

- Raspberry Pi 3 o superior.
- Raspberry Pi OS instalado.
- Pi-hole instalado y configurado.
- Webhook de Discord para recibir las notificaciones.

## Instalación

Sigue los pasos detallados en `INSTALL.md` para configurar el sistema operativo, instalar Pi-hole y configurar los scripts de notificación.

## Scripts

- **pihole-vigilante.sh**: Monitorea el estado de Pi-hole y envía alertas a Discord.
- **pihole-detect-devices.sh**: Detecta nuevos dispositivos en la red y envía alertas a Discord.

## Configuración

- Asegúrate de configurar correctamente los **Webhooks de Discord** en los scripts.
- Puedes configurar la ejecución automática de los scripts a través de cron.

## Contribuciones

Las contribuciones son bienvenidas. Si deseas agregar una funcionalidad o corregir un error, abre un **pull request**.
