
```markdown
# Guía de Instalación para Raspberry Pi 3 ⚙️

Sigue estos pasos para configurar tu Raspberry Pi 3 con Pi-hole y recibir notificaciones en Discord.

![Raspberry Pi 3](https://www.example.com/raspberry-pi3-image.png)

## Requisitos Iniciales

Antes de comenzar, asegúrate de tener lo siguiente:
- **Raspberry Pi 3 o superior**.
- **Tarjeta microSD** de al menos 8GB.
- **Conexión a Internet** (Wi-Fi o Ethernet).
- **Acceso SSH** a tu Raspberry Pi (si lo deseas).
- **Webhook de Discord** para las notificaciones.

---

## 🔥 Pasos de Instalación

### 1. **Descargar e Instalar Raspberry Pi OS**

1. Ve a [la página de descargas de Raspberry Pi](https://www.raspberrypi.org/downloads/).
2. Descarga el **Raspberry Pi Imager** y escribe la imagen en tu tarjeta microSD.
3. Inserta la tarjeta microSD en la Raspberry Pi y conéctala a una pantalla, teclado y ratón.

   ![Instalación de Raspberry Pi OS](https://www.example.com/raspberry-pi-os-setup.png)

### 2. **Configurar Raspberry Pi OS**

1. Enciende la Raspberry Pi y sigue las instrucciones en pantalla para configurar:
   - Idioma y zona horaria.
   - Conexión a la red (Wi-Fi o Ethernet).
   - Cambiar la contraseña predeterminada.
2. **Activar SSH** para acceso remoto, si lo necesitas:
   
   ```bash
   sudo raspi-config
