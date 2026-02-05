#!/bin/bash

# Space Invaders Screensaver - Instalación SIN COMPILACIÓN
# by dr pendejoloco - 2025

echo "╔═══════════════════════════════════════════════════════════╗"
echo "║   Space Invaders Screensaver - Instalación Directa        ║"
echo "║   SIN necesidad de Xcode ni herramientas Swift             ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
HTML_FILE="$SCRIPT_DIR/index.html"

if [ ! -f "$HTML_FILE" ]; then
    echo "❌ Error: No se encuentra index.html"
    exit 1
fi

echo -e "${BLUE}Este instalador creará un acceso directo para usar Space Invaders${NC}"
echo -e "${BLUE}como salvapantallas usando tu navegador web.${NC}"
echo ""

# Opción 1: Crear una app que se ejecute con open
echo "Creando aplicación de salvapantallas..."

# Crear estructura de App Bundle
APP_NAME="SpaceInvadersScreensaver.app"
APP_PATH="$HOME/Applications/$APP_NAME"

mkdir -p "$APP_PATH/Contents/MacOS"
mkdir -p "$APP_PATH/Contents/Resources"

# Copiar archivos HTML
cp -r "$SCRIPT_DIR"/* "$APP_PATH/Contents/Resources/" 2>/dev/null

# Crear Info.plist
cat > "$APP_PATH/Contents/Info.plist" << 'PLIST'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleExecutable</key>
    <string>SpaceInvaders</string>
    <key>CFBundleIdentifier</key>
    <string>com.drpendejoloco.spaceinvaders</string>
    <key>CFBundleName</key>
    <string>Space Invaders</string>
    <key>CFBundleVersion</key>
    <string>1.0</string>
    <key>LSUIElement</key>
    <true/>
</dict>
</plist>
PLIST

# Crear script ejecutable
cat > "$APP_PATH/Contents/MacOS/SpaceInvaders" << 'SCRIPT'
#!/bin/bash
DIR="$(cd "$(dirname "$0")/../Resources" && pwd)"
open -a Safari "file://$DIR/index.html"
sleep 1
osascript -e 'tell application "System Events" to keystroke "f" using {command down, control down}'
SCRIPT

chmod +x "$APP_PATH/Contents/MacOS/SpaceInvaders"

echo ""
echo -e "${GREEN}✓ Aplicación creada exitosamente!${NC}"
echo ""
echo "═══════════════════════════════════════════════════════════"
echo -e "${YELLOW}IMPORTANTE - Cómo usar:${NC}"
echo ""
echo "Opción A - Manual (recomendado para screensaver):"
echo "  1. Ve a: Preferencias del Sistema > Salvapantallas"
echo "  2. Baja hasta 'Mensaje' o 'Album'"
echo "  3. Configura un tiempo corto (1-2 minutos)"
echo "  4. Cuando se active, presiona Command+Tab y abre:"
echo "     ~/Applications/SpaceInvadersScreensaver.app"
echo ""
echo "Opción B - Lanzamiento rápido:"
echo "  1. Abre Spotlight (Cmd+Espacio)"
echo "  2. Escribe: SpaceInvadersScreensaver"
echo "  3. Presiona Enter"
echo ""
echo "Opción C - Desde Terminal:"
echo "  open ~/Applications/SpaceInvadersScreensaver.app"
echo ""
echo "═══════════════════════════════════════════════════════════"
echo ""
echo "La aplicación abrirá Safari en pantalla completa con el juego."
echo "Para salir, presiona ESC o Command+Q"
echo ""
echo -e "${GREEN}¡Listo! 👾${NC}"
echo ""
