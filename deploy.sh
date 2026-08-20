#!/bin/bash
# Script para subir el Atlas a GitHub rápidamente
# Uso: bash deploy.sh

set -e

echo "🚀 Atlas Virtual de Histología - Despliegue a GitHub"
echo "======================================================"
echo ""

# Pedir datos al usuario
read -p "¿Es este tu primer push? (s/n): " first_push

if [[ "$first_push" == "s" ]]; then
    read -p "Ingresa tu usuario de GitHub: " github_user
    read -p "Ingresa el nombre del repositorio: " repo_name
    
    echo ""
    echo "⏳ Inicializando repositorio..."
    git init
    git add .
    git commit -m "Primera versión del Atlas Virtual de Histología"
    git branch -M main
    
    echo "⏳ Agregando remoto de GitHub..."
    git remote add origin "https://github.com/$github_user/$repo_name.git"
    
    echo "⏳ Subiendo código a GitHub..."
    git push -u origin main
    
    echo ""
    echo "✅ ¡Código subido exitosamente!"
    echo ""
    echo "📝 Próximo paso:"
    echo "   1. Ve a: https://github.com/$github_user/$repo_name/settings/pages"
    echo "   2. Selecciona 'Deploy from a branch'"
    echo "   3. Elige 'main / root'"
    echo "   4. Haz clic en 'Save'"
    echo ""
    echo "🌐 Tu sitio estará disponible en:"
    echo "   https://$github_user.github.io/$repo_name/"
    echo ""
else
    echo "⏳ Agregando cambios..."
    git add .
    
    read -p "Escribe un mensaje para este commit: " commit_msg
    git commit -m "$commit_msg"
    
    echo "⏳ Subiendo cambios..."
    git push origin main
    
    echo ""
    echo "✅ ¡Cambios subidos! El sitio se actualizará en ~2 minutos."
    echo "   Puedes ver el progreso en: https://github.com/$(git config --get remote.origin.url | grep -oP '(?<=github.com/).*')/actions"
fi

echo ""
echo "💡 Tip: Para futuros cambios, solo ejecuta 'bash deploy.sh' nuevamente."
