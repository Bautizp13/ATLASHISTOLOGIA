# 🎯 COMIENZA AQUI

Tu **Atlas Virtual de Histología** está **100% listo para GitHub Pages**. Solo necesitas hacer 3 cosas:

---

## 🎬 En 5 minutos: lo que necesitas hacer

### ✅ Paso 1: Crear repositorio en GitHub (1 minuto)
1. Abre https://github.com/new
2. Nombre: `atlas-histologia` (puedes cambiarlo)
3. Asegúrate de marcar **PUBLIC** ✓
4. No marques "Add README" ✓
5. Haz clic en "Create repository" ✓

### ✅ Paso 2: Subir archivos (2 minutos)

#### Opción A: Con Git (recomendado)
```bash
git init
git add .
git commit -m "Atlas Virtual de Histología"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/atlas-histologia.git
git push -u origin main
```
**Reemplaza `TU_USUARIO` con tu usuario de GitHub**

#### Opción B: Sin Git (sin terminal)
1. Ve a tu repositorio en GitHub.com
2. Haz clic en "Add file" → "Upload files"
3. Arrastra TODOS los archivos aquí
4. Escribe: "Atlas Virtual de Histología"
5. Haz clic en "Commit changes"

### ✅ Paso 3: Activar GitHub Pages (1 minuto)
1. En tu repositorio, ve a **Settings** (engranaje)
2. En la izquierda, haz clic en **Pages**
3. Bajo "Build and deployment":
   - Source: "Deploy from a branch" ✓
   - Branch: "main" + "root" ✓
4. Haz clic en "Save" ✓

### ⏳ Paso 4: Esperar 2 minutos
¡Listo! Tu sitio estará en:
- `https://TU_USUARIO.github.io/atlas-histologia/`

---

## 📁 Lo que tienes incluido

✅ **Código React completo** — Lista para producción
✅ **GitHub Actions configurado** — Despliegue automático
✅ **Imágenes histológicas** — Ejemplos incluidos
✅ **Especímenes de ejemplo** — Tráquea, riñón, piel
✅ **Estilos con Tailwind** — Ya configurado
✅ **TypeScript** — Para desarrollo seguro

---

## 📚 Documentación incluida

| Archivo | Para qué |
|---------|----------|
| **GITHUB_PAGES_SETUP.md** | Guía completa y detallada |
| **CAMBIOS_GITHUB_PAGES.md** | Qué cambió para GitHub Pages |
| **deploy.sh** | Script para subir cambios fácil |

---

## 🔧 Desarrollo local (opcional)

Si quieres trabajar en tu computadora antes de subir:

```bash
npm install      # Instalar dependencias
npm run dev      # Iniciar servidor local (http://localhost:5173)
npm run build    # Compilar para producción
```

---

## ➕ Agregar nuevos preparados

Después de subir por primera vez, para agregar más especímenes:

1. **Crear JSON en** `content/preparados/`
   ```json
   {
     "id": "nuevo-preparado",
     "nombre": "Mi Espécimen",
     "tejido": "Tipo de tejido",
     "imagen": "/images/mi-imagen.jpg"
   }
   ```

2. **Agregar imagen en** `public/images/`

3. **Importar en** `src/App.tsx`
   ```typescript
   import nuevoPreparado from '@/...json'
   ```

4. **Hacer push**
   ```bash
   git add .
   git commit -m "Agregar nuevo preparado"
   git push
   ```

5. **¡Listo!** Se actualiza automáticamente en ~2 minutos

---

## ❓ Preguntas frecuentes

**¿Necesito Netlify?**
No. GitHub Pages es suficiente y es gratuito.

**¿Cómo edito sin Git?**
Puedes editar archivos directamente en GitHub.com (haz clic en ✏️).

**¿Dónde está el panel CMS?**
No está en esta versión. Se enfoca en GitHub Pages puro. Si quieres CMS, usa Netlify.

**¿Por qué tarda 2 minutos?**
GitHub Actions necesita compilar y desplegar. Es normal.

**¿Las imágenes se optimizan?**
Sí, Vite las optimiza automáticamente en el build.

---

## 🚨 Si algo no funciona

1. **¿El sitio no aparece?**
   - Espera 5 minutos
   - Verifica que el repo sea PUBLIC
   - Ve a "Actions" y busca errores

2. **¿Los estilos están raros?**
   - Vacía caché: Ctrl+Shift+Delete
   - Recarga: Ctrl+F5

3. **¿Las imágenes no cargan?**
   - Verifica que estén en `public/images/`
   - Usa rutas que empiezan con `/`

---

## 🎉 ¡LISTO!

Tu Atlas está completamente configurado. Solo necesitas:
1. Crear el repo en GitHub
2. Subir los archivos
3. Activar GitHub Pages
4. ¡Esperar 2 minutos!

**Cualquier pregunta, revisa `GITHUB_PAGES_SETUP.md`**

---

**Atlas Virtual de Histología**
Área de Histología y Embriología — Facultad de Ciencias Médicas, UNCUYO
