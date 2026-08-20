# 🚀 Configuración para GitHub Pages (Solo)

Este Atlas Virtual de Histología está optimizado para funcionar **únicamente con GitHub Pages**. No requiere Netlify ni ningún otro servicio externo.

---

## 📋 Requisitos previos

- Cuenta de GitHub
- Git instalado en tu computadora (opcional, pero recomendado)
- Node.js 20 o superior (solo si quieres desarrollar localmente)

---

## ✅ Paso 1: Crear un repositorio en GitHub

1. Abre [github.com/new](https://github.com/new)
2. Crea un nuevo repositorio con el nombre que desees (ej: `atlas-histologia`)
3. **Importante**: El repositorio debe ser **PÚBLICO** para que GitHub Pages funcione de forma gratuita
4. No marques "Add a README" (ya tienes uno)

---

## 📤 Paso 2: Subir el código a GitHub

### Opción A: Usando Git (recomendado)

Desde tu computadora, en la carpeta del proyecto:

```bash
git init
git add .
git commit -m "Primera versión del Atlas Virtual de Histología"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/atlas-histologia.git
git push -u origin main
```

**Reemplaza `TU_USUARIO` con tu nombre de usuario de GitHub.**

### Opción B: Subir archivos manualmente (sin terminal)

1. Ve a tu repositorio en GitHub
2. Haz clic en **"Add file" → "Upload files"**
3. Arrastra todos los archivos y carpetas desde tu computadora
4. Escribe un mensaje de commit (ej: "Primera versión del Atlas")
5. Haz clic en **"Commit changes"**

---

## ⚙️ Paso 3: Activar GitHub Pages

1. En tu repositorio de GitHub, ve a **Settings** (Configuración)
2. En el menú izquierdo, selecciona **"Pages"**
3. Bajo **"Build and deployment"**, selecciona:
   - **Source**: `Deploy from a branch`
   - **Branch**: `main` / `root`
4. Haz clic en **"Save"**

---

## 🔄 Paso 4: Esperar el despliegue automático

1. GitHub ejecutará automáticamente el workflow de GitHub Actions
2. Ve a la pestaña **"Actions"** en tu repositorio para ver el progreso
3. Una vez que veas una marca verde ✅, tu sitio está listo

**Tu sitio estará disponible en:**
- Si es `TU_USUARIO.github.io`: `https://TU_USUARIO.github.io/`
- Si es otro nombre: `https://TU_USUARIO.github.io/atlas-histologia/`

---

## 🛠️ Desarrollo local (opcional)

Si quieres trabajar en el proyecto localmente antes de subirlo:

```bash
# Instalar dependencias
npm install

# Ejecutar servidor de desarrollo (http://localhost:5173)
npm run dev

# Compilar para producción
npm run build

# Previsualizar la compilación
npm run preview
```

---

## 📝 Editar el contenido

Edita los preparados (especímenes histológicos) en:
- `content/preparados/` — Define la estructura (JSON)
- `src/App.tsx` — Carga los preparados en la interfaz
- `public/images/` — Coloca las imágenes de los preparados

Para agregar un nuevo preparado:
1. Crea un archivo JSON en `content/preparados/`
2. Carga una imagen en `public/images/`
3. Importa el JSON en `src/App.tsx`
4. Haz commit y push a GitHub
5. El sitio se actualiza automáticamente en ~2 minutos

---

## 🔗 Estructura de un preparado (JSON)

```json
{
  "id": "preparado-01",
  "nombre": "Tráquea",
  "tejido": "Epitelio respiratorio",
  "tincion": "Hematoxilina-Eosina",
  "aumento": "40x",
  "imagen": "/images/01-traquea-he.jpg",
  "marcadores": [
    {
      "x": 150,
      "y": 200,
      "etiqueta": "Cilios",
      "descripcion": "Extensiones celulares ciliadas"
    }
  ]
}
```

---

## ❌ Qué se removió de la versión original

- **Netlify Identity** — Sin panel CMS con login
- **netlify.toml** — No se utiliza
- **public/admin/** — No se utiliza (requería Netlify)

Si necesitas un panel de edición sin código, considera:
- Volver a Netlify (ver `README.md` original)
- Usar un CMS diferente compatible con GitHub (ej: Forestry)

---

## 🐛 Solucionar problemas

### El sitio no aparece

- Verifica que el repositorio sea **público**
- Comprueba la pestaña **"Actions"** — ¿hay algún error?
- Espera 5 minutos después de hacer push

### Los estilos no cargan

- Vacía el caché del navegador: `Ctrl+Shift+Delete` (Chrome/Firefox)
- Verifica que `BASE_PATH` se calcula correctamente en el workflow

### Las imágenes no se muestran

- Asegúrate de que están en `public/images/`
- Usa rutas relativas: `/images/nombre.jpg` (comienza con `/`)

---

## 📧 Contacto / Soporte

Para más información sobre este proyecto, contacta al Área de Histología y Embriología, Facultad de Ciencias Médicas, UNCUYO.

---

**¡Listo! Tu Atlas está en línea y se actualiza automáticamente cada vez que haces push.** 🎉
