# Guía de Instalación para Raspberry Pi 3

## Requisitos Iniciales

Antes de comenzar, asegúrate de tener lo siguiente:
- **Raspberry Pi 3** con Raspberry Pi OS instalado.
- **Tarjeta microSD** (mínimo 8GB de capacidad, se recomienda 16GB o más).
- **Fuente de alimentación** para la Raspberry Pi 3.
- **Conexión a Internet** (puedes usar Wi-Fi o Ethernet).
- **Acceso a una terminal/SSH** para realizar las configuraciones.
- **Webhook de Discord** para recibir las notificaciones de Pi-hole.

## Pasos de Instalación

### 1. **Descargar e Instalar Raspberry Pi OS**

1. Dirígete a [la página de descargas de Raspberry Pi](https://www.raspberrypi.org/downloads/).
2. Descarga y utiliza el **Raspberry Pi Imager** para escribir la imagen de Raspberry Pi OS en la tarjeta microSD.
3. Conecta la tarjeta microSD en tu Raspberry Pi y enciéndela. La Raspberry Pi debería arrancar automáticamente.

### 2. **Configuración Inicial de Raspberry Pi OS**

1. Una vez que el sistema arranque, sigue las instrucciones para:
    - Configurar el idioma y la zona horaria.
    - Conectarte a la red Wi-Fi (si no usas Ethernet).
    - Cambiar la contraseña predeterminada de la Raspberry Pi.
2. Asegúrate de **activar SSH** para poder conectarte de forma remota desde otro dispositivo. Esto lo puedes hacer mediante `raspi-config`:
    - Ejecuta el siguiente comando:

      ```bash
      sudo raspi-config
      ```

    - Ve a **Interfacing Options > SSH** y habilítalo.

3. **Actualiza tu Raspberry Pi** para asegurarte de que todo el software esté actualizado:

   ```bash
   sudo apt update && sudo apt upgrade -y