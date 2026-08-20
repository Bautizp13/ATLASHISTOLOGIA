# ✅ CHECKLIST DE DESPLIEGUE

Copia esto a un archivo de texto y marca mientras avanzas:

---

## FASE 1: PREPARACIÓN EN GITHUB
- [ ] Tengo cuenta en GitHub (https://github.com/signup)
- [ ] Tengo Git instalado (o lo instalaré de https://git-scm.com)
- [ ] Creé un nuevo repositorio en https://github.com/new

**Datos de mi repositorio:**
```
Usuario: ___________________________
Nombre del repo: ___________________________
URL: https://github.com/___________________________/___________________________
```

---

## FASE 2: SUBIR CÓDIGO A GITHUB
Elige UNO de estos métodos:

### Método A: Con Git (recomendado)
```
[ ] Abrí una terminal en la carpeta del proyecto
[ ] Ejecuté: git init
[ ] Ejecuté: git add .
[ ] Ejecuté: git commit -m "Atlas Virtual de Histología"
[ ] Ejecuté: git branch -M main
[ ] Ejecuté: git remote add origin https://github.com/TU_USUARIO/atlas-histologia.git
[ ] Ejecuté: git push -u origin main
[ ] ✅ El código apareció en GitHub.com
```

### Método B: Sin Git (clic y arrastrar)
```
[ ] Fui a mi repositorio en GitHub.com
[ ] Hice clic en "Add file" → "Upload files"
[ ] Arrastré TODOS los archivos y carpetas
[ ] Escribí el mensaje de commit
[ ] Hice clic en "Commit changes"
[ ] ✅ El código apareció en GitHub.com
```

---

## FASE 3: ACTIVAR GITHUB PAGES
```
[ ] Fui a Settings de mi repositorio (engranaje)
[ ] Hice clic en "Pages" (en el menú izquierdo)
[ ] Seleccioné "Deploy from a branch"
[ ] Elegí rama "main" y carpeta "root"
[ ] Hice clic en "Save"
[ ] ✅ GitHub Pages está activado
```

---

## FASE 4: VERIFICAR DESPLIEGUE
```
[ ] Fui a la pestaña "Actions" del repositorio
[ ] Veo que el workflow se ejecutó ✅
[ ] Espero ~2 minutos
[ ] Accedo a: https://TU_USUARIO.github.io/TU_REPO/
[ ] ✅ El Atlas está visible en internet
```

---

## FASE 5: PROBAR FUNCIONALIDAD
```
[ ] Veo las pestañas del Atlas (Tráquea, Riñón, etc.)
[ ] Puedo hacer clic en las imágenes
[ ] Los marcadores aparecen cuando hago clic
[ ] Los estilos están coloridos (Tailwind funciona)
[ ] Las imágenes se cargan bien
[ ] ✅ Todo funciona correctamente
```

---

## FASE 6: PRÓXIMOS PASOS (opcional)
```
[ ] Leí COMIENZA_AQUI.md
[ ] Leí GITHUB_PAGES_SETUP.md
[ ] Entiendo cómo agregar nuevos preparados
[ ] Quiero personalizar el Atlas
[ ] [ ] Cambiaré colores, logos, textos
[ ] [ ] Agregaré más especímenes
```

---

## 🎯 SI ALGO FALLA

Antes de rendirte, verifica:

### El sitio no aparece
- [ ] ¿El repositorio es PUBLIC?
- [ ] ¿Esperé 5 minutos?
- [ ] ¿La pestaña "Actions" muestra ✅?
- [ ] ¿Leí el error en "Actions"?

### GitHub Pages no está activo
- [ ] ¿Fui a Settings → Pages?
- [ ] ¿Seleccioné "Deploy from a branch"?
- [ ] ¿Elegí "main" + "root"?

### Los estilos se ven feos
- [ ] Vacié el caché: Ctrl+Shift+Delete
- [ ] Recargué: Ctrl+F5 (o Cmd+Shift+R en Mac)

### Las imágenes no cargan
- [ ] ¿Están en `public/images/`?
- [ ] ¿Las rutas empiezan con `/`?

---

## 📞 RECURSOS

- **GitHub Pages:** https://docs.github.com/es/pages
- **Vite:** https://vitejs.dev/guide/
- **React + Vite:** https://github.com/vitejs/vite-plugin-react

---

## ✨ FELICIDADES

Si marcaste TODO con ✅, **¡Tu Atlas está en internet!** 🎉

Ahora puedes:
- Compartir el link con colegas
- Agregar más preparados histológicos
- Personalizar el diseño
- ¡Disfrutar del Atlas Virtual!

---

**Última actualización:** 2025-08-20
**Estado:** 100% funcional para GitHub Pages
