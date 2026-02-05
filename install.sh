#!/bin/bash

# Instalador de Space Invaders Screensaver
# dr pendejoloco - 2025

echo "═══════════════════════════════════════════════════"
echo "   Space Invaders Screensaver - Instalador"
echo "═══════════════════════════════════════════════════"
echo ""

# Colores
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verificar que estamos en el directorio correcto
if [ ! -f "SpaceInvadersScreensaver.swift" ]; then
    echo -e "${RED}✗ Error: No se encuentra SpaceInvadersScreensaver.swift${NC}"
    echo "Por favor ejecuta este script desde el directorio del proyecto"
    exit 1
fi

# Verificar que swiftc está instalado
if ! command -v swiftc &> /dev/null; then
    echo -e "${RED}✗ Error: Swift no está instalado${NC}"
    echo ""
    echo "Para instalar Xcode Command Line Tools, ejecuta:"
    echo "  xcode-select --install"
    exit 1
fi

echo "Paso 1/3: Compilando..."
echo ""

# Compilar
swiftc -target x86_64-apple-macosx13.0 \
    -target arm64-apple-macosx13.0 \
    -framework Cocoa \
    -framework ScreenSaver \
    -framework WebKit \
    -emit-library \
    -o "SpaceInvadersScreensaver.saver/Contents/MacOS/SpaceInvadersScreensaver" \
    "SpaceInvadersScreensaver.swift" 2>&1

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Compilación exitosa${NC}"
else
    echo -e "${RED}✗ Error en la compilación${NC}"
    exit 1
fi

echo ""
echo "Paso 2/3: Preparando instalación..."
echo ""

# Preguntar dónde instalar
echo "¿Dónde quieres instalar el screensaver?"
echo ""
echo "1) Solo para mi usuario (recomendado)"
echo "2) Para todos los usuarios (requiere contraseña de administrador)"
echo ""
read -p "Selecciona una opción (1 o 2): " option

case $option in
    1)
        INSTALL_DIR="$HOME/Library/Screen Savers"
        echo ""
        echo "Instalando para el usuario actual..."
        ;;
    2)
        INSTALL_DIR="/Library/Screen Savers"
        echo ""
        echo "Instalando para todos los usuarios..."
        SUDO="sudo"
        ;;
    *)
        echo -e "${RED}✗ Opción inválida${NC}"
        exit 1
        ;;
esac

echo ""
echo "Paso 3/3: Instalando..."
echo ""

# Crear directorio si no existe
$SUDO mkdir -p "$INSTALL_DIR"

# Copiar el bundle
$SUDO cp -R "SpaceInvadersScreensaver.saver" "$INSTALL_DIR/"

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Instalación completada con éxito!${NC}"
    echo ""
    echo "═══════════════════════════════════════════════════"
    echo -e "${YELLOW}Para activar el screensaver:${NC}"
    echo ""
    echo "1. Ve a Preferencias del Sistema"
    echo "2. Haz clic en 'Salvapantallas'"
    echo "3. Selecciona 'Space Invaders' de la lista"
    echo "4. ¡Disfruta! 👾"
    echo ""
    echo "═══════════════════════════════════════════════════"
    echo ""
    echo "Créditos: dr pendejoloco"
    echo ""
else
    echo -e "${RED}✗ Error en la instalación${NC}"
    exit 1
fi
