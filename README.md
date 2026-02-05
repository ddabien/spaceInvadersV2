# Space Invaders Screensaver para macOS

Salvapantallas retro de Space Invaders con estética pixel art de 8 bits.

**Créditos:** dr pendejoloco

## Compatibilidad

✓ macOS Ventura (13.0)  
✓ macOS Sonoma (14.0)  
✓ macOS Sequoia (15.0)  
✓ macOS Tahoe y superiores

Compatible con procesadores Intel (x86_64) y Apple Silicon (ARM64)

## Instalación

### Opción 1: Compilación automática (recomendado)

1. Abre la Terminal
2. Navega a la carpeta del proyecto:
   ```bash
   cd /ruta/a/SpaceInvadersScreensaver
   ```
3. Ejecuta el script de compilación:
   ```bash
   ./compile_screensaver.sh
   ```
4. Una vez compilado, haz doble clic en `SpaceInvadersScreensaver.saver`
5. Selecciona "Instalar para este usuario" o "Instalar para todos los usuarios"
6. Ve a **Preferencias del Sistema > Salvapantallas**
7. Selecciona **Space Invaders** de la lista

### Opción 2: Compilación manual

Si el script automático no funciona, puedes compilar manualmente:

```bash
swiftc -target x86_64-apple-macosx13.0 \
    -target arm64-apple-macosx13.0 \
    -framework Cocoa \
    -framework ScreenSaver \
    -framework WebKit \
    -emit-library \
    -o SpaceInvadersScreensaver.saver/Contents/MacOS/SpaceInvadersScreensaver \
    SpaceInvadersScreensaver.swift
```

Luego, haz doble clic en `SpaceInvadersScreensaver.saver` para instalarlo.

## Características

- ✨ Gráficos pixel art auténticos de 8 bits
- 🎵 Efectos de sonido retro
- 👾 Enemigos alienígenas con animación
- 🛸 OVNI especial con sonido único
- 🛡️ Escudos destructibles
- 💥 Efectos de explosión
- 📺 Scanlines para efecto CRT

## Estructura del proyecto

```
SpaceInvadersScreensaver/
├── SpaceInvadersScreensaver.swift      # Código Swift del screensaver
├── compile_screensaver.sh              # Script de compilación
├── README.md                           # Este archivo
└── SpaceInvadersScreensaver.saver/     # Bundle del screensaver
    └── Contents/
        ├── Info.plist                  # Configuración del bundle
        ├── MacOS/                      # Binario compilado (después de compilar)
        └── Resources/                  # Archivos HTML/JS/Assets
            ├── index.html
            ├── main.js
            └── assets/
                ├── Ship.gif
                ├── InvaderA.gif
                ├── InvaderB.gif
                ├── Explosion.gif
                └── GameOver.gif
```

## Resolución de problemas

### "No se puede abrir el screensaver porque proviene de un desarrollador no identificado"

1. Abre **Preferencias del Sistema > Seguridad y Privacidad**
2. En la pestaña **General**, haz clic en **Abrir de todas formas**
3. Confirma que quieres abrir el screensaver

### El screensaver no aparece en la lista

1. Asegúrate de que el archivo esté en una de estas ubicaciones:
   - `~/Library/Screen Savers/` (solo para tu usuario)
   - `/Library/Screen Savers/` (para todos los usuarios)
2. Reinicia las Preferencias del Sistema
3. Si persiste, verifica que el screensaver se haya compilado correctamente

### Error de compilación

Asegúrate de tener instalado Xcode Command Line Tools:
```bash
xcode-select --install
```

## Desinstalación

Para desinstalar el screensaver:

1. Ve a `~/Library/Screen Savers/` o `/Library/Screen Savers/`
2. Elimina `SpaceInvadersScreensaver.saver`
3. Reinicia las Preferencias del Sistema

## Licencia

Proyecto creado por **dr pendejoloco** - 2025

---

¡Disfruta de tu salvapantallas retro! 👾🎮
