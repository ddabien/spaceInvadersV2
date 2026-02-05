# Space Invaders Screensaver - SIN COMPILACIÓN
## by dr pendejoloco

Este paquete incluye **3 opciones** para usar el screensaver SIN necesidad de instalar Xcode ni herramientas de desarrollo.

---

## 🎯 OPCIÓN 1: Compilación Online GRATIS (RECOMENDADA)

### Usando GitHub Actions (100% gratis):

1. **Crea una cuenta en GitHub** (si no tienes): https://github.com/signup

2. **Crea un nuevo repositorio:**
   - Click en "New repository"
   - Nombre: `spaceinvaders-screensaver`
   - Marca "Public"
   - Click en "Create repository"

3. **Sube los archivos:**
   - Arrastra todos los archivos de este paquete al repositorio
   - O usa GitHub Desktop (más fácil)

4. **Activa GitHub Actions:**
   - Ve a la pestaña "Actions" en tu repo
   - Click en "I understand my workflows, go ahead and enable them"

5. **Ejecuta la compilación:**
   - Ve a "Actions" > "Build macOS Screensaver"
   - Click en "Run workflow" > "Run workflow"
   - Espera 2-3 minutos

6. **Descarga el screensaver compilado:**
   - Una vez terminado, verás un ✓ verde
   - Click en el workflow
   - Baja y descarga "SpaceInvadersScreensaver"
   - ¡Ya tienes tu .saver compilado!

---

## 🌐 OPCIÓN 2: Usar directamente en el navegador

### Método rápido (sin instalación):

1. **Abre el archivo HTML:**
   ```bash
   cd SpaceInvaders_WebScreensaver
   open index.html
   ```

2. **Pantalla completa:**
   - Presiona `Command + Control + F` en Safari
   - O click en el ícono de pantalla completa (esquina superior derecha)

3. **Configurar como "screensaver manual":**
   - Cuando quieras activarlo, simplemente abre el HTML
   - Para más automático, usa el script:
   ```bash
   ./install_simple.sh
   ```

### Ventajas:
- ✅ Cero instalación
- ✅ Funciona inmediatamente
- ✅ No ocupa espacio en disco

### Desventajas:
- ⚠️ No se activa automáticamente como screensaver
- ⚠️ Necesitas abrirlo manualmente

---

## ☁️ OPCIÓN 3: Servicios de compilación online

### A) MacStadium (prueba gratis):
1. Ve a: https://www.macstadium.com
2. Regístrate para trial gratuito
3. Sube los archivos del proyecto
4. Ejecuta en terminal:
   ```bash
   ./install.sh
   ```
5. Descarga el archivo .saver compilado

### B) MacinCloud (1 hora gratis):
1. Ve a: https://www.macincloud.com
2. Activa el plan "Pay As You Go" (primera hora gratis)
3. Conecta via VNC
4. Sube los archivos
5. Compila con el script
6. Descarga el resultado

### C) CircleCI (gratis para proyectos open source):
1. Conecta tu repo de GitHub
2. Configura el archivo `.circleci/config.yml` (incluido)
3. La compilación es automática
4. Descarga desde los artifacts

---

## 🔧 OPCIÓN 4: Pedir ayuda a un amigo con Mac

Si conoces a alguien con Mac que tenga espacio en disco:

1. Envíale este paquete
2. Que ejecute: `./install.sh`
3. Que te envíe el archivo compilado de:
   `~/Library/Screen Savers/SpaceInvadersScreensaver.saver`

---

## 📱 ¿Qué método uso?

| Situación | Método Recomendado |
|-----------|-------------------|
| Quiero usarlo YA | Opción 2 (navegador) |
| Quiero un screensaver real | Opción 1 (GitHub) |
| Tengo cuenta GitHub | Opción 1 (GitHub) |
| No tengo GitHub | Opción 2 o pedir ayuda |
| Soy developer | Opción 3 (CI/CD) |

---

## 🎮 INSTRUCCIONES DETALLADAS - GitHub Actions

### Paso a paso con capturas:

1. **Ir a GitHub.com**
   - Crea cuenta si no tienes
   - Login

2. **Crear nuevo repositorio:**
   ```
   Nombre: spaceinvaders-screensaver
   Descripción: Space Invaders Screensaver by dr pendejoloco
   ✓ Public
   ✓ Add README
   [Create repository]
   ```

3. **Subir archivos:**
   - Click en "Add file" > "Upload files"
   - Arrastra TODA la carpeta SpaceInvadersScreensaver_Package
   - Scroll abajo, click "Commit changes"

4. **Crear el workflow:**
   - Click en "Add file" > "Create new file"
   - Nombre: `.github/workflows/build.yml`
   - Pega el contenido del archivo build.yml incluido
   - Click "Commit changes"

5. **Ejecutar compilación:**
   - Ve a pestaña "Actions"
   - Click "Build macOS Screensaver"
   - Click "Run workflow" (botón verde)
   - Click "Run workflow" de nuevo
   - Espera 2-3 minutos

6. **Descargar:**
   - Click en el workflow que aparece
   - Baja hasta "Artifacts"
   - Click en "SpaceInvadersScreensaver" para descargar
   - Descomprime el ZIP
   - ¡Doble click en el .saver para instalar!

---

## 💡 TIPS

- GitHub Actions es **100% gratis** y da 2000 minutos/mes
- El proceso de compilación toma menos de 5 minutos
- Una vez compilado, funciona en CUALQUIER Mac
- El .saver compilado es portable (lo puedes compartir)

---

## 🆘 AYUDA

Si ninguna opción funciona, escríbeme:
- GitHub Issues: (en tu repo)
- O busca ayuda en r/macOS o r/mac

---

## 📦 Archivos incluidos

```
SpaceInvaders_WebScreensaver/
├── index.html              ← Abre esto para usar sin instalar
├── main.js                 ← Código del juego
├── assets/                 ← Gráficos retro
├── install_simple.sh       ← Instalador sin compilación
├── .github/workflows/      ← Config para GitHub Actions
└── README_SIN_COMPILAR.md  ← Este archivo
```

---

¡Disfruta tu screensaver retro! 👾

**dr pendejoloco** - 2025
