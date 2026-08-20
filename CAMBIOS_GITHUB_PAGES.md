# 📋 Cambios realizados para GitHub Pages

Este documento detalla **todas las modificaciones** realizadas para que el Atlas funcione **solo con GitHub Pages**, sin Netlify ni dependencias externas.

---

## ✅ Cambios realizados

### 1. ⚙️ `.github/workflows/deploy.yml` (ACTUALIZADO)

**Problema original:**
- La variable `BASE_PATH` se calculaba pero **no se pasaba** al comando `npm run build`
- Esto causaba rutas incorrectas en repositorios no-github.io

**Solución:**
```yaml
- name: Compilar el sitio
  run: npm run build
  env:
    BASE_PATH: ${{ env.BASE_PATH }}  # ← AGREGADO
```

Ahora la variable de entorno se pasa correctamente durante la compilación, y Vite la utiliza según está configurado en `vite.config.ts`.

---

### 2. 📄 `index.html` (LIMPIADO)

**Elementos removidos:**
```html
<!-- ❌ REMOVIDO: No necesario para GitHub Pages -->
<script src="https://identity.netlify.com/v1/netlify-identity-widget.js"></script>

<!-- ❌ REMOVIDO: Script de login de Netlify -->
<script>
  if (window.netlifyIdentity) { ... }
</script>
```

**Razón:** Estas líneas solo funcionan en Netlify. En GitHub Pages causarían errores de carga.

**Resultado:** HTML más limpio, sin dependencias externas.

---

### 3. 📖 `GITHUB_PAGES_SETUP.md` (CREADO)

Guía **completa y paso a paso** para:
- ✅ Crear repositorio en GitHub
- ✅ Subir código (con git o manualmente)
- ✅ Activar GitHub Pages en Settings
- ✅ Esperar despliegue automático
- ✅ Editar contenido
- ✅ Solucionar problemas comunes

---

### 4. `.nojekyll` (CREADO)

Archivo vacío que le indica a GitHub Pages:
- **No proceses este contenido con Jekyll**
- Trata esto como una aplicación React estática

Esto es importante para que los archivos con nombres que empiezan con `_` se sirvan correctamente.

---

### 5. `vite.config.ts` ✅ (SIN CAMBIOS)

```typescript
export default defineConfig({
  base: process.env.BASE_PATH || '/',  // ← Ya estaba correcto
  // ...
})
```

La configuración de Vite **ya era correcta**. Solo necesitaba que el workflow le pasase la variable.

---

### 6. `netlify.toml` (DEPRECADO)

Este archivo puede dejarse en el repositorio sin problemas (GitHub Pages lo ignorará).

Si deseas limpieza total, puede removerse, pero **no afecta** al funcionamiento con GitHub Pages.

---

### 7. `public/admin/` (DEPRECADO)

La carpeta `/public/admin/` (panel Decap CMS) **no funcionará en GitHub Pages** porque requiere Netlify.

Se mantiene en el repositorio sin afectar el despliegue, pero puede removerse si prefieres.

---

## 🔄 Flujo de despliegue automático

Cada vez que hagas `git push` a `main`:

1. GitHub detecta los cambios
2. Ejecuta `.github/workflows/deploy.yml`
3. Instala dependencias (`npm install`)
4. Calcula `BASE_PATH` según el nombre del repo
5. **Compila con `npm run build`** ← Ahora con `BASE_PATH` correcto ✨
6. Sube los archivos de `dist/` a GitHub Pages
7. Tu sitio se actualiza en **~2 minutos**

---

## 📊 Comparación: Antes vs Ahora

| Aspecto | Antes | Ahora |
|---------|-------|-------|
| **Hosting** | Netlify + GitHub Pages | Solo GitHub Pages |
| **Panel CMS** | Decap CMS (requería Netlify) | No incluido |
| **BASE_PATH** | Calculado pero no usado ❌ | Calculado y usado ✅ |
| **Script Netlify** | Cargaba siempre | Removido |
| `.nojekyll` | No estaba | Agregado ✅ |
| **Costo** | Netlify (gratis pero dependencia) | GitHub Pages (gratis, nativo) |

---

## 🚀 Ventajas de esta configuración

✅ **Gratis** — GitHub Pages es gratuito sin límites
✅ **Automático** — Se despliega con cada push a main
✅ **Seguro** — Todo en un solo lugar (GitHub)
✅ **Simple** — No requiere servicios externos
✅ **Rápido** — Hosting nativo de GitHub
✅ **Estándar** — Mismo flujo que miles de proyectos React

---

## ⚠️ Limitaciones conocidas

- **Sin panel CMS** — No puedes agregar preparados desde una interfaz web
- **Sin login** — Todos los cambios se hacen por git/GitHub
- **Solo lectura en GitHub Pages** — Es un sitio estático

**Para agregar preparados:** Edita los archivos JSON en `content/preparados/` y haz push.

---

## 🔗 Recursos útiles

- [Documentación oficial de GitHub Pages](https://docs.github.com/es/pages)
- [Guía de Vite](https://vitejs.dev/guide/)
- [React + Vite](https://github.com/vitejs/vite-plugin-react)

---

## ✨ Siguiente paso

Sigue la guía en **`GITHUB_PAGES_SETUP.md`** para subir el proyecto a GitHub y activar Pages.

**¡Listo para desplegar!** 🎉
